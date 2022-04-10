import 'package:flutter/material.dart';

class sdCategory extends StatelessWidget {
  final String icon;
  final String judul;

  const sdCategory({Key? key, required this.icon, required this.judul}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: 85,
      width: 85,
      decoration: BoxDecoration(
        color: Color.fromARGB(0xFF, 0xF0, 0xEB, 0xE5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 40,
            height: 40,
          ),
          Text(judul)
        ],
      ),
    );
  }
}
