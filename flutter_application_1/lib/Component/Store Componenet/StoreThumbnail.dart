import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreDetail.dart';
import 'package:provider/provider.dart';

class StoreThumbnail extends StatelessWidget {
  final String logotoko;
  final String namatoko;
  final String alamattoko;
  final int jumlahlike;
  const StoreThumbnail(
      {Key? key,
      required this.logotoko,
      required this.namatoko,
      required this.alamattoko,
      required this.jumlahlike})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bottomnavigasi = Provider.of<bottomprovider>(context);
    return GestureDetector(
      onTap: () {
        bottomnavigasi.perubahanparamsstore(1);
      },
      child: Container(
          margin: const EdgeInsets.only(right: 20),
          width: 100,
          child: Column(children: [
            Image.asset(
              logotoko,
              width: 100,
              height: 100,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                namatoko,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    alamattoko,
                    style: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.thumb_up_outlined,
                        size: 10,
                      ),
                      Text(
                        jumlahlike.toString(),
                        style: const TextStyle(fontSize: 10),
                      )
                    ],
                  )
                ],
              )
            ])
          ])),
    );
  }
}
