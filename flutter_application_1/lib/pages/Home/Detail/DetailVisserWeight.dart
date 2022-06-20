import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/Component/homecomponent/DetailVisserComponent.dart';
import 'package:flutter_application_1/pages/Home/Detail/Review.dart';

class DetailVisserWeight extends StatefulWidget {
  final String judul;
  final int recommend;
  final int hargaawal;
  final int harga;
  final String Location;
  final List Fasilitas;
  final String lokasigambar;
  final VoidCallback press;
  final double Rating;
  final List comments;

  const DetailVisserWeight({
    Key? key,
    required this.judul,
    required this.recommend,
    required this.hargaawal,
    required this.harga,
    required this.Location,
    required this.Fasilitas,
    required this.press,
    required this.lokasigambar,
    required this.Rating,
    required this.comments,
  }) : super(key: key);

  @override
  State<DetailVisserWeight> createState() => _DetailVisserWeightState();
}

class _DetailVisserWeightState extends State<DetailVisserWeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(101, 101, 101, 1),
                  blurRadius: 15.0,
                  spreadRadius: -6,
                  offset: Offset(0, 13.0)),
            ], color: Color(0xffE7DFD4)),
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.lokasigambar),
                          fit: BoxFit.fill)),
                ),
                Container(
                    color: Color(0xffF0EBE5).withOpacity(0.5),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.judul,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      "Rp${widget.hargaawal}/Kg",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff000000)
                                              .withOpacity(0.5),
                                          decoration:
                                              TextDecoration.lineThrough,
                                          decorationColor: Colors.black),
                                    ),
                                    Text(
                                      "Rp${widget.harga}/Kg",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up_alt_outlined,
                                    size: 12,
                                    color: Color(0xff656565),
                                  ),
                                  Text(
                                      "${widget.recommend} People Recommend This Place",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff656565))),
                                ],
                              ))
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border:
                  Border.symmetric(horizontal: BorderSide(color: Colors.grey)),
              color: Color(0xffF0EBE5),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff656565)),
                              child: Text(
                                "!",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Text(" Info")
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Review(
                                            gambar: widget.lokasigambar,
                                            rating: widget.Rating,
                                            comments: widget.comments,
                                          )));
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(),
                              backgroundColor:
                                  Color(0xff50777A).withOpacity(0.9),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star_outlined,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                Text("Rating ",
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 12)),
                                Text(
                                  "${widget.Rating}",
                                  style: TextStyle(
                                      color: Color(0xffFFEC44), fontSize: 12),
                                )
                              ],
                            )))
                  ],
                ),
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.75,
              color: Color(0xffF0EBE5),
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [Text("${widget.Location}")],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Detail Visser",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          children: widget.Fasilitas.map((val) {
                            return DetailVisserComponent(
                                icon: val['Icon'],
                                JudulFasilitas: val['judulfasilitas'],
                                KeteranganFasilitas: val['keterangan']);
                          }).toList(),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 40, bottom: 20),
                        child: ElevatedButton(
                          onPressed: widget.press,
                          child: Text("Booking Now"),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff203E58),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15)),
                        )),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
