import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/StoreSection.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/StoreThumbnail.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreCart.dart';
import 'package:provider/provider.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _storePageState createState() => _storePageState();
}

class _storePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<StoreProvider>(context);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_alt_outlined,
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
                      Route route = MaterialPageRoute(
                          builder: (context) => const StoreCart());
                      Navigator.push(context, route);
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
                onPressed: () {},
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
