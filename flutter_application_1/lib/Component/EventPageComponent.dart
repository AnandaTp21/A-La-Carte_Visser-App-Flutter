import 'package:flutter/material.dart';

class EventPageComponent extends StatelessWidget {
  final String LokasiGambar;
  final String NamaLokasi;
  final int JumlahRecomend;
  final String Harga;
  final String Tanggal;
  final VoidCallback press;
  const EventPageComponent({ Key? key,
  required this.press,
    required this.LokasiGambar,
    required this.NamaLokasi,
    required this.JumlahRecomend,
    required this.Tanggal,
    required this.Harga }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(231, 223, 212, 1),
        boxShadow: [BoxShadow(
          color: Color.fromRGBO(101, 101, 101, 1),
          blurRadius: 15.0,
          spreadRadius: -6,
          offset: Offset(0,13.0)
        )]),
      margin: EdgeInsets.only(top: 25),
      height: 210,
    child : TextButton(style: TextButton.styleFrom(padding: EdgeInsets.all(0)),onPressed: press, child: Container(
      
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Image.asset(LokasiGambar,height: 145,),
          ),
          Container(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15), 
              child : Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(NamaLokasi,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child:Row(
                    children: [
                      Column(
                        children: [
                          Text("It's a Visser Event",style: TextStyle(fontSize: 11,color: Color.fromRGBO(101, 101, 101, 1) )),
                          Text("On ${Tanggal}",style: TextStyle(fontSize: 11,color: Color.fromRGBO(101, 101, 101, 1) ))],
                      ),
                      Icon(Icons.event_outlined,size: 25,color: Color.fromRGBO(101, 101, 101, 1),)],
                  ) ,)
                  
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [Icon(Icons.thumb_up_outlined,size: 11,color: Color.fromRGBO(101, 101, 101, 1),),Text(' ${JumlahRecomend} people recommend this place',style: TextStyle(fontSize: 11,color: Color.fromRGBO(101, 101, 101, 1) ),)],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    child: Text("Rp${Harga}/Ticket",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                  )
                  
                ],)
              ],
            ),
          )
          )],
      ),
    ))
    );
  }
}