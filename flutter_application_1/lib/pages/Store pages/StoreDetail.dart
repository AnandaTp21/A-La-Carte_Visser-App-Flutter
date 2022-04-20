import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/sdCategory.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/sdInfo.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/sdProduct.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/sdTitle.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreCart.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreCategoryDetail.dart';
import 'package:provider/provider.dart';

class StoreDetail extends StatelessWidget {
  const StoreDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<StoreProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
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
          IconButton(
              onPressed: () {},
              icon: Icon(
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
            const sdTitle(
                namaToko: "Satria Bahari",
                lokasiToko: "Sisingamangaraja",
                gambarToko: "assets/logogreen.png"),
            const sdInfo(
                rating: "4.8", waktuBuka: "10.00", waktuTutup: "18.00"),
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
                            Route route = MaterialPageRoute(
                                builder: (context) =>
                                    const StoreCategoryDetail());
                            Navigator.push(context, route);
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
                                    hargaProduk: val['hargaProduk'],);
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Route route =
              MaterialPageRoute(builder: (context) => const StoreCart());
          Navigator.push(context, route);
        },
        child: const Icon(Icons.shopping_cart_outlined),
        backgroundColor: const Color.fromARGB(0xFF, 0x20, 0x3E, 0x58),
      ),
    );
  }
}
