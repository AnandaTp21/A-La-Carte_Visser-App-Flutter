import 'package:flutter/material.dart';

class CarouselList extends StatelessWidget {
  final String lokasiGambar;
  const CarouselList({Key? key, required this.lokasiGambar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: FittedBox(
          child: Image.asset(lokasiGambar),
          fit: BoxFit.fill,
        ));
  }
}
