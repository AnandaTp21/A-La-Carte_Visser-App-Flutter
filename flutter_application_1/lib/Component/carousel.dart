import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carousel extends StatelessWidget {
  final List<Widget> items;
  const carousel({Key? key, required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        aspectRatio: 45 / 22,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
