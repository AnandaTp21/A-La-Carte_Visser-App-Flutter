import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:provider/provider.dart';

class scProduct extends StatelessWidget {
  final int jumlahProduk;
  final int idProduk;
  final String gambarProduk;
  final String namaProduk;
  final int hargaProduk;
  const scProduct(
      {Key? key,
      required this.gambarProduk,
      required this.namaProduk,
      required this.hargaProduk,
      required this.idProduk,
      required this.jumlahProduk})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<StoreProvider>(context);
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(0xFF, 0xF0, 0xEB, 0xE5),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(children: [
        Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(120, 158, 158, 158),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.asset(
                gambarProduk,
                height: 100,
                width: 100,
              ),
            )),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namaProduk,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                        child: FittedBox(
                            child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(80, 119, 122, 1)),
                          child: const Icon(Icons.remove),
                          onPressed: () {
                            myProvider.setKurangProduk = idProduk;
                          },
                        )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5, left: 5),
                        height: 25,
                        width: 30,
                        child: Expanded(
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            onFieldSubmitted: (val) {
                              myProvider.setTempTextField = int.parse(val);
                              myProvider.setTextField = idProduk;
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 12),
                                filled: true,
                                fillColor: Color.fromARGB(255, 216, 216, 216),
                                hintText: jumlahProduk.toString(),
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                        child: FittedBox(
                            child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(80, 119, 122, 1)),
                          child: const Icon(Icons.add),
                          onPressed: () {
                            myProvider.setTambahProduk = idProduk;
                          },
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            )),
        Expanded(
            flex: 2,
            child: Text(
              "Rp" + hargaProduk.toString(),
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ))
      ]),
    );
  }
}
