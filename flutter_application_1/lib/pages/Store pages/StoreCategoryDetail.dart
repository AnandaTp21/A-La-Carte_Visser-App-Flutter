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
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
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
          Stack(
            children: [
              IconButton(
                  alignment: Alignment.bottomCenter,
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const StoreCart());
                    Navigator.push(context, route);
                  },
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  )),
              Visibility(
                  visible: myProvider.getCartList.isNotEmpty,
                  child: Container(
                    alignment: Alignment.center,
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Text(
                      myProvider.getCartList.length.toString(),
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
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
              children: myProvider.getProductList.map((val) {
                return sdcProduct(
                  idProduk: val['idProduk'],
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
    );
  }
}
