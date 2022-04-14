import 'package:flutter/material.dart';

class sdProduct extends StatelessWidget {
  final String gambarProduk;
  final String namaProduk;
  final String hargaProduk;

  const sdProduct(
      {Key? key,
      required this.gambarProduk,
      required this.namaProduk,
      required this.hargaProduk})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.9, 0.9),
      children: [
        Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(0xFF, 0xF0, 0xEB, 0xE5),
                borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  gambarProduk,
                  cacheHeight: 200,
                  cacheWidth: 200,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  namaProduk,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Rp$hargaProduk")
              ],
            )),
        SizedBox(
          width: 40,
          height: 40,
          child: FittedBox(
            child: FloatingActionButton(
              heroTag: namaProduk,
              onPressed: () {},
              child: const Icon(Icons.add),
              backgroundColor: Color.fromARGB(0xFF, 0x50, 0x77, 0x7A),
            ),
          ),
        )
      ],
    );
  }
}
