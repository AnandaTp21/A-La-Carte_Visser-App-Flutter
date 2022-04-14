import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/scdProduct.dart';
import 'package:flutter_application_1/Component/homecomponent/HomeDownComponent.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:provider/provider.dart';

class StoreCategoryDetail extends StatefulWidget {
  const StoreCategoryDetail({Key? key}) : super(key: key);

  @override
  _StoreCategoryDetailState createState() => _StoreCategoryDetailState();
}

class _StoreCategoryDetailState extends State<StoreCategoryDetail> {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<StoreProvider>(context);
    var containerColor = Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_alt_outlined,
              color: Colors.white,
            )),
        centerTitle: true,
        title: Image.asset(
          'assets/logowhite.png',
          width: 51,
          height: 35,
        ),
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              )),
        ],
      ),
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
              children: myProvider.getSdProductList.map((val) {
                return sdcProduct(
                  gambarProduk: val['gambarProduk'],
                  hargaProduk: val['hargaProduk'],
                  namaProduk: val['namaProduk'],
                  containerColor: int.parse(val['index']) % 2 == 0
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
        onPressed: () {},
        child: const Icon(Icons.shopping_cart_outlined),
        backgroundColor: const Color.fromARGB(0xFF, 0x20, 0x3E, 0x58),
      ),
      bottomNavigationBar: const HomeDownComponent(
          color1: 0xff656565,
          color2: 0xffffffff,
          color3: 0xff656565,
          color4: 0xff656565),
    );
  }
}
