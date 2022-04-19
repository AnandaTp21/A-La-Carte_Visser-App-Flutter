import 'package:flutter/material.dart';

class sdcProduct extends StatelessWidget {
  final String gambarProduk;
  final int hargaProduk;
  final String namaProduk;
  final Color containerColor;

  const sdcProduct({
    Key? key,
    required this.gambarProduk,
    required this.hargaProduk,
    required this.namaProduk,
    required this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  gambarProduk,
                  width: 100,
                  height: 100,
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(left: 10, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      namaProduk,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const Text(
                      'Tackle type',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                            child: FittedBox(
                                child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromRGBO(80, 119, 122, 1)),
                              child: const Icon(Icons.remove),
                              onPressed: () {},
                            )),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5, left: 5),
                            height: 25,
                            width: 30,
                            child: const Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(bottom: 15),
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 216, 216, 216),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    hintText: "Qty",
                                    hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                            child: FittedBox(
                                child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromRGBO(80, 119, 122, 1)),
                              child: const Icon(Icons.add),
                              onPressed: () {},
                            )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        "Rp" + hargaProduk.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 2,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(80, 119, 122, 1)),
              child: const Text("Add"),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
