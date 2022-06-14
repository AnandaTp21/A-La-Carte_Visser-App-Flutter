import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/Order_Provider.dart';
import 'package:flutter_application_1/Provider/login_Provider.dart';
import 'package:flutter_application_1/pages/utama.dart';
import 'package:provider/provider.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orderProvider = Provider.of<Order_Provider>(context);
    var accountProvider = Provider.of<account_Provider>(context);
    return Scaffold(
        appBar: AppBar(
          leading: Text(""),
          centerTitle: true,
          title: Image.asset(
            'assets/logowhite.png',
            width: 51,
            height: 35,
          ),
          backgroundColor: const Color.fromRGBO(80, 119, 122, 1),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          decoration: const BoxDecoration(
              color: Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4)),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Color.fromARGB(0xFF, 0x20, 0x3E, 0x58)),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 100,
                ),
              ),
              Column(
                children: [
                  const Text(
                    "O r d e r e d",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${accountProvider.active['Username']}, your order has been successfully placed.',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 18, color: Color.fromARGB(90, 0, 0, 0)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  text(orderProvider.getKeterangan),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => utama()));
                },
                child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 250,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(0xFF, 0x20, 0x3E, 0x58),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: const Text(
                      "Back to Home",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    )),
              )
            ],
          )),
        ));
  }

  text(val) {
    if (val['paymentMethod'] == 'delivery') {
      return const Text(
        "We'll notify you when your driver is ready!",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      );
    } else {
      return Text(
        "Your order will be ready today at ${val['namaToko']},\n${val['alamatToko']}",
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      );
    }
  }
}
