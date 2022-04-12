import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Component/homecomponent/HomeDownComponent.dart';

class StoreCategoryDetail extends StatefulWidget {
  const StoreCategoryDetail({Key? key}) : super(key: key);

  @override
  _StoreCategoryDetailState createState() => _StoreCategoryDetailState();
}

class _StoreCategoryDetailState extends State<StoreCategoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_alt_outlined,
              color: Colors.white,
            )),
        centerTitle: true,
        title: Image.asset(
          'assets/logowhite.png',
          width: 51,
          height: 35,
        ),
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              )),
        ],
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              color: const Color.fromARGB(0xFF, 0xF0, 0xEB, 0xE5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tackle",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black38,
                        fontSize: 16),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.filter_alt,
                          color: Colors.black38,
                        ),
                        const Text(
                          "Filter",
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  color: Color.fromARGB(
                    0xFF,
                    0xE7,
                    0xDF,
                    0xD4,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/ImageAssets/fishing_rod.png',
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
                                  "Joran Pancing",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Tackle type",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 10),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 30,
                                        child: FittedBox(
                                            child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Color.fromRGBO(
                                                  80, 119, 122, 1)),
                                          child: Icon(Icons.remove),
                                          onPressed: () {},
                                        )),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 5, left: 5),
                                        height: 25,
                                        width: 30,
                                        child: const Expanded(
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.only(bottom: 15),
                                                filled: true,
                                                fillColor: Color.fromARGB(
                                                    255, 216, 216, 216),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                5))),
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
                                              primary: Color.fromRGBO(
                                                  80, 119, 122, 1)),
                                          child: Icon(Icons.add),
                                          onPressed: () {},
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Rp350000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(80, 119, 122, 1)),
                          child: Text("Add"),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: HomeDownComponent(
          color1: 0xff656565,
          color2: 0xffffffff,
          color3: 0xff656565,
          color4: 0xff656565),
    );
  }
}
