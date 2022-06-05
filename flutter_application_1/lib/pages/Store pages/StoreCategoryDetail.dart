import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/scdProduct.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreCart.dart';
import 'package:provider/provider.dart';

class StoreCategoryDetail extends StatefulWidget {
  const StoreCategoryDetail({Key? key}) : super(key: key);

  @override
  _StoreCategoryDetailState createState() => _StoreCategoryDetailState();
}

class _StoreCategoryDetailState extends State<StoreCategoryDetail> {
  @override
  Widget build(BuildContext context) {
    var bottomnavigasi = Provider.of<bottomprovider>(context);
    var myProvider = Provider.of<StoreProvider>(context);
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              color: const Color.fromARGB(0xFF, 0xF0, 0xEB, 0xE5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Tackle",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black38,
                        fontSize: 16),
                  ),
                  Container(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.filter_alt,
                          color: Colors.black38,
                        ),
                        Text(
                          "Filter",
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: myProvider.getProductList.map((val) {
                return sdcProduct(
                  gambarProduk: val['gambarProduk'],
                  hargaProduk: val['hargaProduk'],
                  namaProduk: val['namaProduk'],
                  containerColor: val['index'] % 2 == 0
                      ? const Color.fromARGB(0xFF, 0xF0, 0xEB, 0xE5)
                      : const Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4),
                );
              }).toList(),
            ))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bottomnavigasi.perubahanparamsstore(3);
        },
        child: const Icon(Icons.shopping_cart_outlined),
        backgroundColor: const Color.fromARGB(0xFF, 0x20, 0x3E, 0x58),
      ),
    );
  }
}
