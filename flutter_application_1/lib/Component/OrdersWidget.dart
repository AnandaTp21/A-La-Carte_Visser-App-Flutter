import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrdersWidget extends StatelessWidget {
  final String shipping;
  final String namaToko;
  final String alamatToko;
  final String totalHarga;
  final int orderID;

  const OrdersWidget(
      {Key? key,
      required this.shipping,
      required this.namaToko,
      required this.alamatToko,
      required this.totalHarga,
      required this.orderID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            style: TextStyle(
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
                            onPressed: () {},
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
