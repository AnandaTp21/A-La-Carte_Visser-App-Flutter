import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home/RecommendPage.dart';
import 'package:flutter_application_1/pages/Store%20pages/Storepage.dart';

class HomeDownComponent extends StatelessWidget {
  final int color1;
  final int color2;
  final int color3;
  final int color4;
  const HomeDownComponent(
      {Key? key,
      required this.color1,
      required this.color2,
      required this.color3,
      required this.color4})
      : super(key: key);
  static const IconData scale = IconData(0xf0564, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4),
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 4,
                spreadRadius: 1,
                offset: const Offset(0, 0.5))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RecommendPage()));
              },
              icon: Icon(
                Icons.home_outlined,
                color: Color(color1),
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StorePage()));
              },
              icon: Icon(Icons.storefront_outlined, color: Color(color2))),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.confirmation_number_outlined,
                  color: Color(color3))),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_outlined, color: Color(color4))),
        ],
      ),
    );
  }
}
