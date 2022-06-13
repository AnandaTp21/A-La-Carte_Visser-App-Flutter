import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:flutter_application_1/pages/Store%20pages/DeliveryAddressConfirmation.dart';
import 'package:provider/provider.dart';

class DeliveryAddress extends StatefulWidget {
  const DeliveryAddress({Key? key}) : super(key: key);

  @override
  State<DeliveryAddress> createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  TextEditingController namaController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController provinsiController = TextEditingController();
  TextEditingController kotaController = TextEditingController();
  TextEditingController kodeposController = TextEditingController();
  TextEditingController nomorHpController = TextEditingController();

  bool? isNamaEmpty;
  bool? isAlamatEmpty;
  bool? isProvinsiEmpty;
  bool? isKotaEmpty;
  bool? isKodeposEmpty;
  bool? isNomorHpEmpty;

  bool? pass;

  Map<String, String> data = {};
  @override
  Widget build(BuildContext context) {
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
          backgroundColor: const Color.fromRGBO(80, 119, 122, 1),
        ),
        body: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: const BoxDecoration(
                color: Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4)),
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25, bottom: 30),
                  child: const Text(
                    "Enter the delivery address",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                TextField(
                  controller: namaController,
                  decoration: InputDecoration(
                      label: const Text("Name"),
                      errorText: isNamaEmpty == true ? "Input Name!" : null),
                ),
                TextField(
                  controller: alamatController,
                  decoration: InputDecoration(
                      label: const Text("Address"),
                      errorText:
                          isAlamatEmpty == true ? "Input Address!" : null),
                ),
                TextField(
                  controller: provinsiController,
                  decoration: InputDecoration(
                      label: const Text("State/Province"),
                      errorText:
                          isProvinsiEmpty == true ? "Input Province!" : null),
                ),
                TextField(
                  controller: kotaController,
                  decoration: InputDecoration(
                      label: const Text("City/District"),
                      errorText: isKotaEmpty == true ? "Input City!" : null),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: kodeposController,
                  decoration: InputDecoration(
                      label: const Text("Postal code"),
                      errorText:
                          isKodeposEmpty == true ? "Input Postal Code!" : null),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: nomorHpController,
                  decoration: InputDecoration(
                      label: const Text("Phone Number"),
                      errorText: isNomorHpEmpty == true
                          ? "Input Phone Number!"
                          : null),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: ElevatedButton(
                    child: const Text(
                      "Save",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(500, 40),
                      primary: const Color.fromARGB(0xFF, 0x20, 0x3E, 0x58),
                    ),
                    onPressed: () {
                      check();
                      if (pass == true) {
                        data = {
                          "nama": namaController.text,
                          "alamat": alamatController.text,
                          "provinsi": provinsiController.text,
                          "kota": kotaController.text,
                          "kodepos": kodeposController.text,
                          "nomorhp": nomorHpController.text,
                        };
                        myProvider.setAlamat = data;
                        Route route = MaterialPageRoute(
                            builder: (context) =>
                                const DeliveryAddressConfirmation());
                        Navigator.push(context, route);
                      }
                    },
                  ),
                )
              ],
            )));
  }

  check() {
    if (namaController.text.isEmpty) {
      setState(() {
        isNamaEmpty = true;
      });
    } else {
      setState(() {
        isNamaEmpty = false;
      });
    }
    if (alamatController.text.isEmpty) {
      setState(() {
        isAlamatEmpty = true;
      });
    } else {
      setState(() {
        isAlamatEmpty = false;
      });
    }
    if (provinsiController.text.isEmpty) {
      setState(() {
        isProvinsiEmpty = true;
      });
    } else {
      setState(() {
        isProvinsiEmpty = false;
      });
    }
    if (kotaController.text.isEmpty) {
      setState(() {
        isKotaEmpty = true;
      });
    } else {
      setState(() {
        isKotaEmpty = false;
      });
    }
    if (kodeposController.text.isEmpty) {
      setState(() {
        isKodeposEmpty = true;
      });
    } else {
      setState(() {
        isKodeposEmpty = false;
      });
    }
    if (nomorHpController.text.isEmpty) {
      setState(() {
        isNomorHpEmpty = true;
      });
    } else {
      setState(() {
        isNomorHpEmpty = false;
      });
    }
    if (namaController.text.isNotEmpty &&
        alamatController.text.isNotEmpty &&
        provinsiController.text.isNotEmpty &&
        kotaController.text.isNotEmpty &&
        kodeposController.text.isNotEmpty &&
        nomorHpController.text.isNotEmpty) {
      pass = true;
    }
  }
}
