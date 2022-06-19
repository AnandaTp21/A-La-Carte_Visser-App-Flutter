import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailVisserEvent extends StatefulWidget {
  String Lokasigambar;
  String judul;
  int Capacity;
  int isi;
  String Kalender;
  String waktutanggal;
  String namakolam;
  String lokasikolam;
  String Hadiah;
  int Harga;
  String Naskah;
  int Recommend;
  VoidCallback press;

  DetailVisserEvent({
    Key? key,
    required this.Lokasigambar,
    required this.judul,
    required this.Capacity,
    required this.isi,
    required this.Kalender,
    required this.waktutanggal,
    required this.lokasikolam,
    required this.namakolam,
    required this.Harga,
    required this.Hadiah,
    required this.Naskah,
    required this.press,
    required this.Recommend,
  }) : super(key: key);

  @override
  State<DetailVisserEvent> createState() => _DetailVisserEventState();
}

class _DetailVisserEventState extends State<DetailVisserEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Event Details"),
      ),
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset(widget.Lokasigambar),
                ),
                Container(
                    child: Expanded(
                        child: Container(
                            color: Color(0xffE7DFD4),
                            child: Container(
                              margin:
                                  EdgeInsets.only(top: 30, left: 20, right: 20),
                              child: ListView(
                                children: [
                                  Text(
                                    widget.judul,
                                    style: GoogleFonts.poppins(fontSize: 27),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Icon(
                                              Icons.group,
                                              size: 30,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text(
                                                      "${widget.isi}/${widget.Capacity}",
                                                      style: GoogleFonts.poppins(
                                                          color: widget.isi ==
                                                                  widget
                                                                      .Capacity
                                                              ? Colors.red
                                                              : Colors.green))),
                                              Text(
                                                "Maximum Capacity",
                                                style: GoogleFonts.poppins(
                                                    color: Color(0xff747688)),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Icon(
                                              Icons.calendar_month,
                                              size: 30,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text(
                                                      "${widget.Kalender}")),
                                              Text(
                                                "${widget.waktutanggal}",
                                                style: GoogleFonts.poppins(
                                                    color: Color(0xff747688)),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Icon(
                                              Icons.group,
                                              size: 30,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text(widget.Hadiah)),
                                              Text(
                                                "Total Prize",
                                                style: GoogleFonts.poppins(
                                                    color: Color(0xff747688)),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Icon(
                                              Icons.pin_drop,
                                              size: 30,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 5),
                                                  child:
                                                      Text(widget.namakolam)),
                                              Text(
                                                "${widget.lokasikolam}",
                                                style: GoogleFonts.poppins(
                                                    color: Color(0xff747688)),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                  Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 20),
                                            child: Icon(
                                              Icons.group,
                                              size: 30,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 5),
                                                  child: Text(
                                                      "${widget.Harga}/Ticket")),
                                              Text(
                                                "Special offers",
                                                style: GoogleFonts.poppins(
                                                    color: Color(0xff747688)),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 20),
                                    child: Text(
                                      "About Event",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(widget.Naskah),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 49, bottom: 20),
                                      child: ElevatedButton(
                                        onPressed: widget.isi == widget.Capacity
                                            ? null
                                            : widget.press,
                                        child: Text("Book Now"),
                                        style: ElevatedButton.styleFrom(
                                            primary: Color(0xff203E58),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(40))),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 30, vertical: 15)),
                                      )),
                                ],
                              ),
                            ))))
              ],
            ),
            Container(
                height: 60,
                margin: EdgeInsets.only(top: 240, left: 40, right: 40),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 5),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 60),
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CircleAvatar(
                                backgroundColor: Colors.amberAccent,
                              ),
                            ),
                            Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "Recommend by ${widget.Recommend}  people",
                        style:
                            TextStyle(color: Color(0xff50777A), fontSize: 11),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffF0EBE5),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ))
          ],
        ),
      ),
    );
  }
}
