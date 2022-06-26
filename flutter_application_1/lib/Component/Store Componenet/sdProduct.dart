import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:provider/provider.dart';

class sdProduct extends StatelessWidget {
  final String gambarProduk;
  final String namaProduk;
  final int hargaProduk;
  final int idProduk;
  final int idToko;

  const sdProduct(
      {Key? key,
      required this.gambarProduk,
      required this.namaProduk,
      required this.hargaProduk,
      required this.idProduk,
      required this.idToko})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<StoreProvider>(context);
    Map<String, dynamic> keteranganProduk = {
      'idToko': idToko,
      'idProduk': idProduk,
      'gambarProduk': gambarProduk,
      'namaProduk': namaProduk,
      'hargaProduk': hargaProduk,
      'jumlahProduk': 1
    };
    return Stack(
      alignment: const Alignment(1, 1.06),
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
                Text("Rp${hargaProduk.toString()}")
              ],
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(80, 119, 122, 1),
                shadowColor: Colors.transparent,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(50)))),
            onPressed: () {
              myProvider.setCartList = keteranganProduk;
            },
            child: const Icon(Icons.add))
      ],
    );
  }
}
