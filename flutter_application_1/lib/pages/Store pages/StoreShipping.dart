import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:flutter_application_1/pages/Store%20pages/DeliveryAddress.dart';
import 'package:flutter_application_1/pages/Store%20pages/DeliveryAddressConfirmation.dart';
import 'package:provider/provider.dart';

class StoreShipping extends StatelessWidget {
  const StoreShipping({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: const BoxDecoration(
              color: Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4)),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              margin: const EdgeInsets.only(top: 25, bottom: 60),
              child: const Text(
                "SELECT SHIPPING",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            RadioListTile(
                activeColor: Colors.black,
                title: const Text("Delivery to my address",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text("Home / Office address"),
                value: myProv.getShippingRadio1,
                groupValue: myProv.getShippingRadioGroup,
                onChanged: (val) {
                  myProv.setShippingRadio = val;
                }),
            const Divider(
              color: Colors.black,
            ),
            RadioListTile(
                activeColor: Colors.black,
                title: const Text("Pick up",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text("Safe and fast"),
                value: myProv.getShippingRadio2,
                groupValue: myProv.getShippingRadioGroup,
                onChanged: (val) {
                  myProv.setShippingRadio = val;
                }),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: ElevatedButton(
                onPressed: () {
                  if (myProv.getShippingRadioGroup == "delivery") {
                    if (myProv.getAlamat.isEmpty) {
                      Route route = MaterialPageRoute(
                          builder: (context) => const DeliveryAddress());
                      Navigator.push(context, route);
                    } else {
                      Route route = MaterialPageRoute(
                          builder: (context) =>
                              const DeliveryAddressConfirmation());
                      Navigator.push(context, route);
                    }
                  } else {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const Dialog(
                            child: Text("PickUp"),
                          );
                        });
                  }
                },
                child: const Text(
                  "Next",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(500, 40),
                  primary: const Color.fromARGB(0xFF, 0x20, 0x3E, 0x58),
                ),
              ),
            )
          ]),
        ));
  }
}
