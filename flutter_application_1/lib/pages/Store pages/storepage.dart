import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/StoreSection.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/StoreThumbnail.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';

import 'package:flutter_application_1/pages/search.dart';
import 'package:provider/provider.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _storePageState createState() => _storePageState();
}

class _storePageState extends State<StorePage> {
  bool search = false;
  TextEditingController pencarian = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var bottomnavigasi = Provider.of<bottomprovider>(context);
    var myProvider = Provider.of<StoreProvider>(context);
    return Scaffold(
        appBar: search?
       AppBar(
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        leading: (
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              setState(() {
                search = false;
                pencarian = TextEditingController(text: "");
              });
            },
          )
        ),
        title : TextField(
          controller: pencarian,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffffffff).withOpacity(0.6),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            suffixIcon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Search(pencarian : pencarian)));
            }, icon: Icon(Icons.search_outlined))
          ),
        ),
      ):AppBar(
        leading: IconButton(
            onPressed: () {
              bottomnavigasi.perubahanparamsstore(0);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            )),
        centerTitle: true,
        title: Image.asset(
          'assets/logowhite.png',
          width: 51,
          height: 35,
        ),
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        actions: [
          Stack(
            children: [
              IconButton(
                  alignment: Alignment.bottomCenter,
                  onPressed: () {
                    bottomnavigasi.perubahanpembantuparamssotre(1);
                    bottomnavigasi.perubahanparamsstore(3);
                  },
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  )),
              Visibility(
                  visible: myProvider.getCartList.isNotEmpty,
                  child: Container(
                    alignment: Alignment.center,
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Text(
                      myProvider.getCartList.length.toString(),
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  search = true;
                });
              },
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.white,
              )),
        ],
      ),
        body: Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(0xFF, 0x50, 0x77, 0x7A)),
          child: ListView(
            padding: const EdgeInsets.only(top: 0),
            children: [
              carousel(
                  items: myProvider.getStoreCarouselList.map((val) {
                return CarouselList(lokasiGambar: val);
              }).toList()),
              StoreSection(
                  judulSection: "Recommended Visser Store",
                  subJudulSection: "Let's find out!",
                  storeThumbnail: myProvider.getStoreThumbnailList.map((val) {
                    return StoreThumbnail(
                        logotoko: val['logotoko'],
                        namatoko: val['namatoko'],
                        alamattoko: val['alamattoko'],
                        jumlahlike: val['jumlahlike']);
                  }).toList()),
              StoreSection(
                  judulSection: "Order Again",
                  subJudulSection: "You ever order here. Again?",
                  storeThumbnail: myProvider.getStoreThumbnailList.map((val) {
                    return StoreThumbnail(
                        logotoko: val['logotoko'],
                        namatoko: val['namatoko'],
                        alamattoko: val['alamattoko'],
                        jumlahlike: val['jumlahlike']);
                  }).toList()),
              StoreSection(
                  judulSection: "Recently Viewed",
                  subJudulSection: "Come and see again!",
                  storeThumbnail: myProvider.getStoreThumbnailList.map((val) {
                    return StoreThumbnail(
                        logotoko: val['logotoko'],
                        namatoko: val['namatoko'],
                        alamattoko: val['alamattoko'],
                        jumlahlike: val['jumlahlike']);
                  }).toList()),
            ],
          ),
        ));
  }
}
