import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/Store_Provider.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreDetail.dart';
import 'package:provider/provider.dart';

class StoreThumbnail extends StatelessWidget {
  final String logotoko;
  final String namatoko;
  final String alamattoko;
  final int jumlahlike;
  final double rating;
  final String waktubuka;
  final String waktututup;
  final List comment;
  const StoreThumbnail({
    Key? key,
    required this.logotoko,
    required this.namatoko,
    required this.alamattoko,
    required this.jumlahlike,
    required this.rating,
    required this.waktubuka,
    required this.waktututup,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bottomnavigasi = Provider.of<bottomprovider>(context);
    var myprov = Provider.of<StoreProvider>(context);
    return GestureDetector(
      onTap: () {
        myprov.opendetailfuns(namatoko, alamattoko, logotoko, rating, waktubuka,
            waktututup, comment);
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
