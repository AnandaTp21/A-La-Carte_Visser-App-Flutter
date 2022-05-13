import 'package:flutter/material.dart';

class TimePageComponent extends StatelessWidget {
  final String LokasiGambar;
  final String NamaLokasi;
  final int JumlahRecomend;
  final int Harga;
  final VoidCallback press;
  const TimePageComponent({ Key? key ,
  required this.press,
    required this.LokasiGambar,
    required this.NamaLokasi,
    required this.JumlahRecomend,
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
      height: 264,
    child : TextButton(style: TextButton.styleFrom(padding: EdgeInsets.all(0)),onPressed: press, child: Container(
      
      child: Column(
        children:[
          Container(
            height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(LokasiGambar),
                fit: BoxFit.fill)
              ),
          ),
          Container(
            color: Colors.white.withOpacity(0.5),
            padding: EdgeInsets.only(bottom:10),
            child: 
            Container( margin: EdgeInsets.symmetric(horizontal: 15),
            child :Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child :Text(NamaLokasi,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Row(
                    children: [
                      Icon(Icons.thumb_up_outlined,size: 11,color: Color.fromRGBO(101, 101, 101, 1),),
                      Text(' ${JumlahRecomend} people recommend this place',style: TextStyle(fontSize: 11,color: Color.fromRGBO(101, 101, 101, 1) ),)],
                  ),
                ],),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                    child:Row(
                    children: [Text("It's a Visser Time",style: TextStyle(fontSize: 11,color: Color.fromRGBO(101, 101, 101, 1) )),
                    Icon(Icons.timer_outlined,size: 14,color: Color.fromRGBO(101, 101, 101, 1),)],
                  ) ,),
                   
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    child: Text("Rp${Harga}/Hour",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
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