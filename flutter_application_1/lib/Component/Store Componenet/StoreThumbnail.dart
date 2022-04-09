import 'package:flutter/material.dart';

class StoreThumbnail extends StatelessWidget {
  final String logotoko;
  final String namatoko;
  final String alamattoko;
  final String jumlahlike;
  const StoreThumbnail(
      {Key? key,
      required this.logotoko,
      required this.namatoko,
      required this.alamattoko,
      required this.jumlahlike})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 20),
        width: 100,
        child: Column(children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset(logotoko),
            margin: const EdgeInsets.only(bottom: 5),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              namatoko,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                      jumlahlike,
                      style: const TextStyle(fontSize: 10),
                    )
                  ],
                )
              ],
            )
          ])
        ]));
  }
}
