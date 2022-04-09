import 'package:flutter/material.dart';

class CarouselList extends StatelessWidget {
  final String lokasiGambar;
  const CarouselList({Key? key, required this.lokasiGambar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Image.asset(lokasiGambar),
    );
  }
}
