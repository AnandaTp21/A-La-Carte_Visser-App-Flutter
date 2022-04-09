import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/StoreSection.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/StoreThumbnail.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';

class storePage extends StatefulWidget {
  const storePage({Key? key}) : super(key: key);

  @override
  _storePageState createState() => _storePageState();
}

class _storePageState extends State<storePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          decoration:
              BoxDecoration(color: Color.fromARGB(0xFF, 0x50, 0x77, 0x7A)),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ListView(
                  padding: EdgeInsets.only(top: 0),
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
              )
            ],
          )),
    );
  }
}
