import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/sdCategory.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/sdInfo.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/sdProduct.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/sdTitle.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreCart.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreCategoryDetail.dart';
import 'package:flutter_application_1/pages/search.dart';
import 'package:provider/provider.dart';

class StoreDetail extends StatefulWidget {
  const StoreDetail({Key? key}) : super(key: key);

  @override
  State<StoreDetail> createState() => _StoreDetailState();
}

class _StoreDetailState extends State<StoreDetail> {
  @override
  bool search = false;

  TextEditingController pencarian = TextEditingController();
  Widget build(BuildContext context) {
    var myProvider = Provider.of<StoreProvider>(context);
    var bottomnavigasi = Provider.of<bottomprovider>(context);
    var getdata = myProvider.opendetail[0];
    return Scaffold(
      appBar: search
          ? AppBar(
              backgroundColor: Color.fromRGBO(80, 119, 122, 1),
              leading: (IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  setState(() {
                    search = false;
                    pencarian = TextEditingController(text: "");
                  });
                },
              )),
              title: TextField(
                controller: pencarian,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffffffff).withOpacity(0.6),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    suffixIcon: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      Search(pencarian: pencarian))));
                        },
                        icon: Icon(Icons.search_outlined))),
              ),
            )
          : AppBar(
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
                          bottomnavigasi.perubahanpembantuparamssotre(2);
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Text(
                            myProvider.getCartList.length.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration:
            const BoxDecoration(color: Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4)),
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: [
            sdTitle(
                namaToko: getdata['namaToko'],
                lokasiToko: getdata['lokasiToko'],
                gambarToko: getdata['gambarToko']),
            sdInfo(
                rating: getdata['rating'],
                waktuBuka: getdata['waktuBuka'],
                waktuTutup: getdata['waktuTutup'],
                coment: getdata['coment'],
                gambar: getdata['gambarToko']),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 20),
                    height: 85,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const sdCategory(
                            icon: 'assets/ImageAssets/icon_discount.png',
                            judul: "Promo"),
                        GestureDetector(
                          child: const sdCategory(
                              icon: 'assets/ImageAssets/pancing.png',
                              judul: "Tackle"),
                          onTap: () {
                            bottomnavigasi.perubahanparamsstore(2);
                          },
                        ),
                        const sdCategory(
                            icon: 'assets/ImageAssets/umpan.png',
                            judul: "Balt"),
                        const sdCategory(
                            icon: 'assets/ImageAssets/apparel.png',
                            judul: "Apparel"),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "All",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 20),
                            child: GridView.count(
                              childAspectRatio: 0.7,
                              shrinkWrap: true,
                              primary: false,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              crossAxisCount: 2,
                              children: myProvider.getProductList.map((val) {
                                return sdProduct(
                                  idProduk: val['idProduk'],
                                  gambarProduk: val['gambarProduk'],
                                  namaProduk: val['namaProduk'],
                                  hargaProduk: val['hargaProduk'],
                                );
                              }).toList(),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
