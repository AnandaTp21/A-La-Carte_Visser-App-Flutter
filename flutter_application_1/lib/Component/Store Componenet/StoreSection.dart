import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/StoreThumbnail.dart';

class StoreSection extends StatelessWidget {
  final String judulSection;
  final String subJudulSection;
  final List<Widget> storeThumbnail;

  const StoreSection(
      {Key? key,
      required this.judulSection,
      required this.subJudulSection,
      required this.storeThumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        height: screenheight * 0.23,
        decoration: BoxDecoration(
            color: Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 8))
            ]),
        child: Padding(
          padding: EdgeInsets.only(left: 13, top: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                judulSection,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                subJudulSection,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: screenheight * 0.15,
                child: ListView(
                    scrollDirection: Axis.horizontal, children: storeThumbnail),
              )
            ],
          ),
        ));
  }
}
