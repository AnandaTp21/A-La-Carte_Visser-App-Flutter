import 'package:flutter/material.dart';

class sdTitle extends StatelessWidget {
  final String namaToko;
  final String lokasiToko;
  final String gambarToko;
  const sdTitle(
      {Key? key,
      required this.namaToko,
      required this.lokasiToko,
      required this.gambarToko})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$namaToko,\n$lokasiToko",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const Text(
                  "Fishing Shop",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.only(top: 5),
                  ),
                  child: const Text(
                    "See other outlets>",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Image.asset(
                gambarToko,
                height: 100,
                width: 100,
              ))
        ],
      ),
    );
  }
}
