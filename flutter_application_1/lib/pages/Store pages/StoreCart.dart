import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/scProduct.dart';
import 'package:flutter_application_1/Provider/Order_Provider.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreShipping.dart';
import 'package:flutter_application_1/pages/Store%20pages/storepage.dart';
import 'package:flutter_application_1/pages/search.dart';
import 'package:provider/provider.dart';

class StoreCart extends StatefulWidget {
  final int? posisi;
  const StoreCart({Key? key, this.posisi}) : super(key: key);

  @override
  State<StoreCart> createState() => _StoreCartState();
}

class _StoreCartState extends State<StoreCart> {
  @override
  bool search = false;
  TextEditingController pencarian = TextEditingController();
  Widget build(BuildContext context) {
    var bottomnavigasi = Provider.of<bottomprovider>(context);
    var myProvider = Provider.of<StoreProvider>(context);
    var orderProvider = Provider.of<Order_Provider>(context);
    return Scaffold(
      appBar: search
          ? AppBar(
              backgroundColor: Color.fromRGBO(80, 119, 122, 1),
              leading: (IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  setState(() {
                    search = false;
                    pencarian = TextEditingController(text: "");
                  });
                },
              )),
              title: TextField(
                controller: pencarian,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffffffff).withOpacity(0.6),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    suffixIcon: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      Search(pencarian: pencarian))));
                        },
                        icon: Icon(Icons.search_outlined))),
              ),
            )
          : AppBar(
              leading: IconButton(
                  onPressed: () {
                    if (bottomnavigasi.helpparams == 1) {
                      bottomnavigasi.perubahanparamsstore(0);
                    } else if (bottomnavigasi.helpparams == 2) {
                      bottomnavigasi.perubahanparamsstore(1);
                    } else if (bottomnavigasi.helpparams == 3) {
                      bottomnavigasi.perubahanparamsstore(2);
                    }
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
                        onPressed: () {},
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Text(
                            myProvider.getCartList.length.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ))
                  ],
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        search = true;
                      });
                    },
                    icon: const Icon(
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
              myProvider.getCartList.length == 0
                  ? cart(context)
                  : ListView(
                      padding: const EdgeInsets.only(bottom: 80),
                      scrollDirection: Axis.vertical,
                      children: [
                        Column(
                          children: myProvider.getCartList.map((val) {
                            return Dismissible(
                                direction: DismissDirection.endToStart,
                                resizeDuration: Duration(milliseconds: 200),
                                key: Key(val['idProduk'].toString()),
                                onDismissed: (direction) {
                                  myProvider.setDissmissible = val['idProduk'];
                                },
                                background: Container(
                                  padding: const EdgeInsets.only(right: 10),
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 25, 10, 25),
                                  alignment: AlignmentDirectional.centerEnd,
                                  decoration: const BoxDecoration(
                                    color:
                                        Color.fromARGB(255, 0xB1, 0x31, 0x26),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: const Icon(
                                    Icons.delete_rounded,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                ),
                                child: scProduct(
                                    jumlahProduk: val['jumlahProduk'],
                                    idProduk: val['idProduk'],
                                    gambarProduk: val['gambarProduk'],
                                    namaProduk: val['namaProduk'],
                                    hargaProduk: val['hargaProduk']));
                          }).toList(),
                        ),
                      ],
                    ),
              Visibility(
                  visible: myProvider.getCartList.isNotEmpty,
                  child: Container(
                    color: const Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              padding:
                                  const EdgeInsets.only(bottom: 10, top: 10),
                              margin: const EdgeInsets.only(left: 40),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Total Price",
                                    style: TextStyle(
                                        color: Color.fromARGB(115, 0, 0, 0),
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Rp" + myProvider.getTotalHarga.toString(),
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                orderProvider.setKeterangan = {
                                  'orderID':
                                      orderProvider.getOrderList.length + 1,
                                  'namaToko': myProvider.getStoreThumbnailList[
                                      myProvider.getCartList[0]['idToko'] -
                                          1]['namatoko'],
                                  'idToko': myProvider.getStoreThumbnailList[
                                      myProvider.getCartList[0]['idToko'] -
                                          1]['idToko'],
                                  'alamatToko':
                                      myProvider.getStoreThumbnailList[
                                          myProvider.getCartList[0]['idToko'] -
                                              1]['alamattoko'],
                                  'totalHarga':
                                      myProvider.getTotalHarga.toString(),
                                  'cartList': myProvider.getCartList
                                };
                                Route route = MaterialPageRoute(
                                    builder: (context) =>
                                        const StoreShipping());
                                Navigator.push(context, route);
                              },
                              child: Container(
                                margin: const EdgeInsets.only(
                                    right: 30, bottom: 10, top: 10),
                                height: 60,
                                decoration: const BoxDecoration(
                                    color:
                                        Color.fromARGB(0xFF, 0x20, 0x3E, 0x58),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Next",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ))
            ],
          )),
    );
  }

  cart(BuildContext konteks) {
    var bottomnavigasi = Provider.of<bottomprovider>(konteks);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.remove_shopping_cart_rounded,
            size: 150,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Your cart is empty,",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const Text("Let's fill it with your dream item!",
              style: TextStyle(fontSize: 20)),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              bottomnavigasi.perubahanparamsstore(0);
            },
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 10, top: 10),
                height: 60,
                width: 200,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(0xFF, 0x20, 0x3E, 0x58),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: const Text(
                  "Go Shopping",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
