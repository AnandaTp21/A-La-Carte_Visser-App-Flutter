import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/StoreSection.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/StoreThumbnail.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';

import '../../Component/homecomponent/HomeDownComponent.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _storePageState createState() => _storePageState();
}

class _storePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
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
        decoration:
            const BoxDecoration(color: Color.fromARGB(0xFF, 0x50, 0x77, 0x7A)),
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: const [
            carousel(items: [
              CarouselList(lokasiGambar: "assets/test.png"),
              CarouselList(lokasiGambar: "assets/test.png"),
              CarouselList(lokasiGambar: "assets/test.png")
            ]),
            StoreSection(
                judulSection: "Recommended Visser Store",
                subJudulSection: "Let's find out!",
                storeThumbnail: [
                  StoreThumbnail(
                      logotoko: 'assets/logogreen.png',
                      namatoko: 'Visser Store',
                      alamattoko: "St. Bilal No. 46",
                      jumlahlike: "50"),
                  StoreThumbnail(
                      logotoko: 'assets/logogreen.png',
                      namatoko: 'Visser Store',
                      alamattoko: "St. Bilal No. 46",
                      jumlahlike: "50"),
                  StoreThumbnail(
                      logotoko: 'assets/logogreen.png',
                      namatoko: 'Visser Store',
                      alamattoko: "St. Bilal No. 46",
                      jumlahlike: "50"),
                  StoreThumbnail(
                      logotoko: 'assets/logogreen.png',
                      namatoko: 'Visser Store',
                      alamattoko: "St. Bilal No. 46",
                      jumlahlike: "50")
                ]),
            StoreSection(
                judulSection: "Order Again",
                subJudulSection: "You ever order here. Again?",
                storeThumbnail: [
                  StoreThumbnail(
                      logotoko: 'assets/logogreen.png',
                      namatoko: 'Visser Store',
                      alamattoko: "St. Bilal No. 46",
                      jumlahlike: "50"),
                  StoreThumbnail(
                      logotoko: 'assets/logogreen.png',
                      namatoko: 'Visser Store',
                      alamattoko: "St. Bilal No. 46",
                      jumlahlike: "50"),
                  StoreThumbnail(
                      logotoko: 'assets/logogreen.png',
                      namatoko: 'Visser Store',
                      alamattoko: "St. Bilal No. 46",
                      jumlahlike: "50"),
                  StoreThumbnail(
                      logotoko: 'assets/logogreen.png',
                      namatoko: 'Visser Store',
                      alamattoko: "St. Bilal No. 46",
                      jumlahlike: "50")
                ]),
            StoreSection(
                judulSection: "Recently Viewed",
                subJudulSection: "Come and see again!",
                storeThumbnail: [
                  StoreThumbnail(
                      logotoko: 'assets/logogreen.png',
                      namatoko: 'Visser Store',
                      alamattoko: "St. Bilal No. 46",
                      jumlahlike: "50"),
                  StoreThumbnail(
                      logotoko: 'assets/logogreen.png',
                      namatoko: 'Visser Store',
                      alamattoko: "St. Bilal No. 46",
                      jumlahlike: "50"),
                  StoreThumbnail(
                      logotoko: 'assets/logogreen.png',
                      namatoko: 'Visser Store',
                      alamattoko: "St. Bilal No. 46",
                      jumlahlike: "50"),
                  StoreThumbnail(
                      logotoko: 'assets/logogreen.png',
                      namatoko: 'Visser Store',
                      alamattoko: "St. Bilal No. 46",
                      jumlahlike: "50")
                ]),
          ],
        ),
      ),
      bottomNavigationBar: HomeDownComponent(
          color1: 0xff656565,
          color2: 0xffffffff,
          color3: 0xff656565,
          color4: 0xff656565),
    );
  }
}
