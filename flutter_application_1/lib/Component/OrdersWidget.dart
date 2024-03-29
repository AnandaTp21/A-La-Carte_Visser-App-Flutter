import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:provider/provider.dart';

class OrdersWidget extends StatelessWidget {
  final String shipping;
  final String namaToko;
  final String alamatToko;
  final String totalHarga;
  final int orderID;

  final int idToko;

  const OrdersWidget(
      {Key? key,
      required this.shipping,
      required this.namaToko,
      required this.alamatToko,
      required this.totalHarga,
      required this.orderID,
      required this.idToko})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bottomnavigasi = Provider.of<bottomprovider>(context);
    var myprov = Provider.of<StoreProvider>(context);
    var toko = myprov.getStoreThumbnailList[idToko - 1];
    return Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Order ID : ${orderID}",
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color.fromARGB(150, 0, 0, 0)),
                          ),
                        ),
                        judul(shipping, namaToko),
                        lokasi(alamatToko)
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Rp.${totalHarga}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Color.fromARGB(151, 0, 0, 0)),
                        ),
                        const SizedBox(height: 5),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color.fromARGB(
                                    0xFF, 0x20, 0x3E, 0x58),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)))),
                            onPressed: () {
                              if (shipping == 'tiket') {
                                bottomnavigasi.perubahanbottom(0);
                              } else {
                                myprov.opendetailfuns(
                                    toko['namatoko'],
                                    toko['alamattoko'],
                                    toko['logotoko'],
                                    toko['rating'],
                                    toko['waktuBuka'],
                                    toko['waktuTutup'],
                                    toko['idToko'],
                                    toko['comment']);
                                bottomnavigasi.perubahanbottom(1);
                                bottomnavigasi.perubahanparamsstore(1);
                              }
                            },
                            child: const Text("Reorder",
                                style: const TextStyle(fontSize: 20)))
                      ],
                    ))
              ],
            ),
            const Divider()
          ],
        ));
  }

  judul(String shipping, String namaToko) {
    Widget? icon;
    if (shipping == "tiket") {
      icon = Icon(
        Icons.event,
        size: 30,
      );
    } else if (shipping == "delivery") {
      icon = Icon(
        Icons.delivery_dining_outlined,
        size: 30,
      );
    } else {
      icon = Icon(
        Icons.shopping_cart_outlined,
        size: 30,
      );
    }
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          icon,
          SizedBox(width: 5),
          Text(namaToko,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ))
        ],
      ),
    );
  }

  lokasi(lokasiToko) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          const Icon(
            Icons.location_on_outlined,
            size: 30,
          ),
          SizedBox(width: 5),
          Text(lokasiToko,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ))
        ],
      ),
    );
  }
}
