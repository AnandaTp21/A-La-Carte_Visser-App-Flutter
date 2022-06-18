import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/OrdersWidget.dart';
import 'package:flutter_application_1/Component/Store%20Componenet/scProduct.dart';
import 'package:flutter_application_1/Provider/Order_Provider.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:provider/provider.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orderProvider = Provider.of<Order_Provider>(context);
    return Scaffold(
        appBar: AppBar(
          leading: Text(""),
          centerTitle: true,
          title: Image.asset(
            'assets/logowhite.png',
            width: 51,
            height: 35,
          ),
          elevation: 0,
          toolbarHeight: 40,
          backgroundColor: const Color.fromRGBO(80, 119, 122, 1),
        ),
        body: DefaultTabController(
            length: 2,
            child: Container(
              color: const Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4),
              child: Column(children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 30),
                  color: const Color.fromRGBO(80, 119, 122, 1),
                  width: MediaQuery.of(context).size.width,
                  height: 65,
                  child: const Text(
                    "My Orders",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                Container(
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                          horizontal: BorderSide(color: Colors.grey)),
                    ),
                    child: const TabBar(
                      tabs: [Tab(text: "On Going"), Tab(text: "History")],
                      labelColor: Color.fromARGB(0xFF, 0xB1, 0x31, 0x26),
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Color.fromARGB(0xFF, 0xB1, 0x31, 0x26),
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )),
                Expanded(
                    child: TabBarView(children: [
                  OnGoing(context),
                  ListView(
                    children: orderProvider.getOrderList.map((val) {
                      return OrdersWidget(
                          shipping: val['shipping'],
                          namaToko: val['namaToko'],
                          alamatToko: val['alamatToko'],
                          totalHarga: val['totalHarga'],
                          orderID: val['orderID']);
                    }).toList(),
                  )
                ]))
              ]),
            )));
  }

  History(provider) {
    return ListView(children: provider.getOrderList.map);
  }

  OnGoing(BuildContext context) {
    var bottomnavigation = Provider.of<bottomprovider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.shopping_cart_outlined,
            size: 200,
            color: Colors.grey,
          ),
          const Text(
            "No orders yet",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const Text(
            "Hit the blue button down below to Creat an order",
            style: TextStyle(fontSize: 18),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    primary: const Color.fromARGB(0xFF, 0x20, 0x3E, 0x58)),
                onPressed: () {
                  bottomnavigation.perubahanbottom(1);
                  bottomnavigation.perubahanparamsstore(0);
                },
                child: const Text(
                  "Creat an Order",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
          )
        ],
      ),
    );
  }
}
