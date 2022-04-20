import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/scProduct.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:provider/provider.dart';


class StoreCart extends StatefulWidget {
  const StoreCart({Key? key}) : super(key: key);

  @override
  State<StoreCart> createState() => _StoreCartState();
}

class _StoreCartState extends State<StoreCart> {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<StoreProvider>(context);
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
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView(
                padding: EdgeInsets.only(bottom: 80),
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: myProvider.getCartList.map((val) {
                      return scProduct(
                          jumlahProduk: val['jumlahProduk'],
                          idProduk: val['idProduk'],
                          gambarProduk: val['gambarProduk'],
                          namaProduk: val['namaProduk'],
                          hargaProduk: val['hargaProduk']);
                    }).toList(),
                  ),
                ],
              ),
              Container(
                color: const Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                          margin: EdgeInsets.only(left: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Total Price",
                                style: TextStyle(
                                    color: Color.fromARGB(115, 0, 0, 0),
                                    fontSize: 16),
                              ),
                              Text(
                                myProvider.getTotalHarga.toString(),
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(
                              right: 30, bottom: 10, top: 10),
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(0xFF, 0x20, 0x3E, 0x58),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
