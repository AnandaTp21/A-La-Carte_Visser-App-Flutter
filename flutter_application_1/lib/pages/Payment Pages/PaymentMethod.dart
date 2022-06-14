import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/Order_Provider.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:flutter_application_1/pages/Payment%20Pages/OrderSuccess.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreShipping.dart';
import 'package:provider/provider.dart';

class PaymentMethod extends StatelessWidget {
  final String shipping;
  const PaymentMethod({Key? key, required this.shipping}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myProv = Provider.of<Order_Provider>(context);
    var storeProvider = Provider.of<StoreProvider>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            'assets/logowhite.png',
            width: 51,
            height: 35,
          ),
          backgroundColor: const Color.fromRGBO(80, 119, 122, 1),
        ),
        body: Container(
            padding: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(
                color: Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4)),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: ListView(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Order payment",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                padding: EdgeInsets.all(15),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    color:
                                        Color.fromARGB(0xFF, 0xF0, 0xEB, 0xE5)),
                                child: Icon(
                                  shipping == 'delivery'
                                      ? Icons.delivery_dining_outlined
                                      : shipping == 'pickup'
                                          ? Icons.shopping_cart_outlined
                                          : Icons.event,
                                  size: 30,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    myProv.getKeterangan['namaToko'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(myProv.getKeterangan['alamatToko'],
                                      style: TextStyle(fontSize: 16)),
                                  Text("Medan", style: TextStyle(fontSize: 16))
                                ],
                              )
                            ],
                          ),
                        ),
                        Card(
                            margin: EdgeInsets.only(top: 30, bottom: 10),
                            color: const Color.fromARGB(0xFF, 0xF0, 0xEB, 0xE5),
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: RadioListTile(
                                secondary:
                                    Image.asset('assets/ImageAssets/money.png'),
                                title: const Text("Cash",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                subtitle: const Text("Rupiah"),
                                activeColor: Colors.black,
                                value: myProv.getOrderPaymentRadio1,
                                groupValue: myProv.getOrderPaymentGroup,
                                onChanged: (val) {
                                  myProv.setOrderPaymentRadio = val;
                                },
                              ),
                            )),
                        Card(
                            margin: EdgeInsets.only(bottom: 10),
                            color: const Color.fromARGB(0xFF, 0xF0, 0xEB, 0xE5),
                            child: Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 20),
                              child: RadioListTile(
                                secondary: Image.asset(
                                    'assets/ImageAssets/credit.png'),
                                title: const Text("Credit Card",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                subtitle: const Text("2540 xxxx xxxx 2648"),
                                activeColor: Colors.black,
                                value: myProv.getOrderPaymentRadio2,
                                groupValue: myProv.getOrderPaymentGroup,
                                onChanged: (val) {
                                  myProv.setOrderPaymentRadio = val;
                                },
                              ),
                            )),
                        Card(
                            margin: EdgeInsets.only(bottom: 10),
                            color: const Color.fromARGB(0xFF, 0xF0, 0xEB, 0xE5),
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: RadioListTile(
                                secondary: Image.asset('assets/logoblack.png'),
                                title: const Text("Online payment",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                subtitle: const Text("Visser Pay"),
                                activeColor: Colors.black,
                                value: myProv.getOrderPaymentRadio3,
                                groupValue: myProv.getOrderPaymentGroup,
                                onChanged: (val) {
                                  myProv.setOrderPaymentRadio = val;
                                },
                              ),
                            )),
                      ],
                    ),
                  ]),
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
                            margin: const EdgeInsets.only(left: 40),
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
                                  "Rp" + myProv.getKeterangan['totalHarga'],
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
                              if (myProv.getOrderPaymentGroup != 0) {
                                myProv.setListKeterangan(shipping);
                                storeProvider.OrderComplete();

                                Route route = MaterialPageRoute(
                                    builder: (context) => const OrderSuccess());
                                Navigator.push(context, route);
                              } else {
                                null;
                              }
                            },
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
                                    Icons.credit_card,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Pay Now",
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
                )
              ],
            )));
  }
}
