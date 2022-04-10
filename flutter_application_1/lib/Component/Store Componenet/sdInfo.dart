import 'package:flutter/material.dart';

class sdInfo extends StatelessWidget {
  final String rating;
  final String waktuBuka;
  final String waktuTutup;
  const sdInfo(
      {Key? key,
      required this.rating,
      required this.waktuBuka,
      required this.waktuTutup})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(0xFF, 0xF0, 0xEB, 0xE5),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color: Color.fromARGB(0xFF, 0xB1, 0x31, 0x26),
                    ),
                    Text(
                      rating,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Text("Ratings")
              ],
            ),
          ),
          Container(
            color: Colors.black,
            height: 70,
            width: 1,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.access_time,
                      color: Color.fromARGB(0xFF, 0xB1, 0x31, 0x26),
                    ),
                    Text(
                      "Open",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text("$waktuBuka - $waktuTutup")
              ],
            ),
          )
        ],
      ),
    );
  }
}
