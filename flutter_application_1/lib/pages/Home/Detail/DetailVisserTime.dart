import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/homecomponent/DetailVisserComponent.dart';

class DetailVisserTime extends StatefulWidget {
  final String judul;
  final int recommend;
  final int harga;
  final String Location;
  final String Lokasigambar;
  final List Fasilitas;
  final VoidCallback press;
  const DetailVisserTime({ Key? key,
  required this.judul,
  required this.recommend,
  required this.harga,
  required this.Location,
  required this.Fasilitas,
  required this.press,
  required this.Lokasigambar
   }) : super(key: key);

  @override
  State<DetailVisserTime> createState() => _DetailVisserTimeState();
}

class _DetailVisserTimeState extends State<DetailVisserTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      appBar: AppBar(backgroundColor: Colors.transparent,),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(101, 101, 101, 1),
          blurRadius: 15.0,
          spreadRadius: -6,
          offset: Offset(0,13.0)
              ),
            ]
            ,color:Color(0xffE7DFD4)),
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Container(
                  child: Image.asset(widget.Lokasigambar),
                ),
                Container(
                  color: Color(0xffF0EBE5).withOpacity(0.5),
                  child: 
                  Container ( margin: EdgeInsets.symmetric(horizontal: 10),child 
                  :Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.judul,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Column(
                            children: [
                            Text("Rp${widget.harga}/Hour",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),)],
                          ),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                      child : Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined,size: 12,color: Color(0xff656565),),
                          Text("${widget.recommend} People Recommend This Place",style: TextStyle(fontSize: 10,color: Color(0xff656565))),
                          ],
                      ))
                    ],
                  ),
                )
                )],
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
                    children: [Container(padding: EdgeInsets.all(5),decoration: BoxDecoration(shape: BoxShape.circle,color:Color(0xff656565)),child: Text("!",style: TextStyle(color: Colors.white),),),
                    Text(" Info")],
                  ),
                ),
                TextButton(onPressed: (){},style: TextButton.styleFrom(shape: RoundedRectangleBorder(
                ),backgroundColor: Color(0xff50777A).withOpacity(0.9),padding: EdgeInsets.symmetric(horizontal: 35,vertical: 18)), 
                child: Row(
                  children: [
                    Icon(Icons.star_outlined,color: Colors.white,size: 12,),
                    Text("Rating",style: TextStyle(color: Color(0xffffffff),fontSize: 12)),
                    Text(" 4.6",style: TextStyle(color: Color(0xffFFEC44),fontSize: 12),)
                  ],
                ))
                  ],
                ),
              ],
            ),
          ),
          Container(color: Color(0xffF0EBE5),
            child: Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                child : Row(
                  children: [
                    Text("Location",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                )),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child:
                   Row(
                  children: [
                    Text("${widget.Location}")
                  ],
                ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                child : Row(
                  children: [
                    Text("Detail Visser",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                )),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    children: widget.Fasilitas.map((val){
                      return DetailVisserComponent(icon: val['Icon'], JudulFasilitas: val['judulfasilitas'], KeteranganFasilitas: val['keterangan']);
                    }).toList(),
                  )
                ),
                Container(
                child : ElevatedButton(onPressed: widget.press, child: Text("Booking Now"),style: ElevatedButton.styleFrom(
                  primary: Color(0xff203E58),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15)
                ),)),
              ],
            ),
          )
          )],
      ),
    );
  }
}