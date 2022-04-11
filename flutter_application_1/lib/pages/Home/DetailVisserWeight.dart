import 'package:flutter/material.dart';

class DetailVisserWeight extends StatefulWidget {
  final String judul;
  final int recommend;
  final int hargaawal;
  final int harga;

  const DetailVisserWeight({ Key? key ,
  required this.judul,
  required this.recommend,
  required this.hargaawal,
  required this.harga,

  }) : super(key: key);

  @override
  State<DetailVisserWeight> createState() => _DetailVisserWeightState();
}

class _DetailVisserWeightState extends State<DetailVisserWeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      appBar: AppBar(backgroundColor: Color(0xffE7DFD4,)),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Image.asset("assets/logogreen.png",height: 200,),
                ),
                Container(
                  color: Color(0xffF0EBE5).withOpacity(0.5),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.judul),
                          Text("${widget.hargaawal}")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${widget.recommend}"),
                          Text("${widget.harga}")
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                        border: Border.symmetric(horizontal: BorderSide(color: Colors.grey)),
                        color: Color(0xffF0EBE5),
                      ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(

                      padding: EdgeInsets.symmetric(horizontal: 90,vertical: 10),
                  child: Row(
                    children: [Icon(Icons.accessible_forward),
                    Text("Info")],
                  ),
                ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}