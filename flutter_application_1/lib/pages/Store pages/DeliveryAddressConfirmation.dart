import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:flutter_application_1/pages/Payment%20Pages/PaymentMethod.dart';
import 'package:flutter_application_1/pages/Store%20pages/DeliveryAddress.dart';
import 'package:provider/provider.dart';

class DeliveryAddressConfirmation extends StatelessWidget {
  const DeliveryAddressConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myProv = Provider.of<StoreProvider>(context);
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
          backgroundColor: const Color.fromRGBO(80, 119, 122, 1),
        ),
        body: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4)),
            child: ListView(
              children: [
                Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => const DeliveryAddress());
                          Navigator.push(context, route);
                        },
                        child: const Text(
                          "Change",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ))),
                Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: const Text("Shipping Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22))),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(myProv.getAlamat["nama"],
                            style: const TextStyle(fontSize: 18)),
                        Text(myProv.getAlamat["alamat"],
                            style: const TextStyle(fontSize: 18)),
                        Text(myProv.getAlamat["provinsi"],
                            style: const TextStyle(fontSize: 18)),
                        Text(myProv.getAlamat["kota"],
                            style: const TextStyle(fontSize: 18)),
                        Text(myProv.getAlamat["kodepos"],
                            style: const TextStyle(fontSize: 18)),
                        Text(myProv.getAlamat["nomorhp"],
                            style: const TextStyle(fontSize: 18)),
                      ]),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 15),
                    child: const Text("Express Delivery",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22))),
                const Text("1 - 2 Bussines days",
                    style: TextStyle(fontSize: 18)),
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: ElevatedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) =>
                              const PaymentMethod(shipping: "delivery"));
                      Navigator.push(context, route);
                    },
                    child: const Text(
                      "Proceed to Payment",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(0xFF, 0x20, 0x3E, 0x58),
                        minimumSize: Size(500, 40)),
                  ),
                )
              ],
            )));
  }
}
