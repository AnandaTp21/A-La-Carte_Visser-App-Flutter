import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/StoreSection.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/StoreThumbnail.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
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
    return Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(0xFF, 0x50, 0x77, 0x7A)),
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
      );
    
  }
}
