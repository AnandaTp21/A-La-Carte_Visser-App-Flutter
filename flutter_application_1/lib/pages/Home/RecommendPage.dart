import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Component/homecomponent/judulpage.dart';
import 'package:flutter_application_1/Provider/Home_Provider.dart';
import 'package:provider/provider.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({Key? key}) : super(key: key);

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    final datarecoment = Provider.of<Home_Provider>(context);
    return Container(
      child: ListView(
        padding: EdgeInsets.only(top: 0),
        children: [
          carousel(
              items: datarecoment.AmbilCarouselRecommend.map((e) {
            return CarouselList(lokasiGambar: e);
          }).toList()),
          judulpage(judul: "Recommend Visser"),
        ],
      ),
    );
  }
}
