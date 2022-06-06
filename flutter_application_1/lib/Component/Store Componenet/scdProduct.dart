import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:provider/provider.dart';

class sdcProduct extends StatelessWidget {
  final String gambarProduk;
  final int hargaProduk;
  final String namaProduk;
  final Color containerColor;
  final int idProduk;

  const sdcProduct({
    Key? key,
    required this.gambarProduk,
    required this.hargaProduk,
    required this.namaProduk,
    required this.containerColor,
    required this.idProduk,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> keteranganProduk = {
      'idProduk': idProduk,
      'gambarProduk': gambarProduk,
      'namaProduk': namaProduk,
      'hargaProduk': hargaProduk,
      'jumlahProduk': 1
    };
    var myProvider = Provider.of<StoreProvider>(context);
    return Container(
      color: containerColor,
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  gambarProduk,
                  width: 100,
                  height: 100,
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(left: 10, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      namaProduk,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const Text(
                      'Tackle type',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      child: Text(
                        "Rp" + hargaProduk.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 2,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(80, 119, 122, 1)),
              child: const Text("Add"),
              onPressed: () {
                myProvider.setCartList = keteranganProduk;
              },
            ),
          )
        ],
      ),
    );
  }
}
