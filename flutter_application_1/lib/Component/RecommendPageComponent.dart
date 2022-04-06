import 'package:flutter/material.dart';
class RecommendPageComponent extends StatelessWidget {
  final String LokasiGambar;
  final String NamaLokasi;
  final String JumlahRecomend;
  final String Waktu;
  final String Harga;
  final VoidCallback press;
  const RecommendPageComponent({ 
    Key? key,
    required this.press,
    required this.LokasiGambar,
    required this.NamaLokasi,
    required this.JumlahRecomend,
    required this.Waktu,
    required this.Harga 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 210,
    child : OutlinedButton(style: OutlinedButton.styleFrom(padding: EdgeInsets.all(0)),onPressed: press, child: Container(
      
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Image.asset(LokasiGambar,height: 145,),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(NamaLokasi,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child:Row(
                    children: [Text(Waktu,style: TextStyle(fontSize: 11,color: Color.fromRGBO(101, 101, 101, 1) )),
                    Icon(Icons.timer_outlined,size: 14,color: Color.fromRGBO(101, 101, 101, 1),)],
                  ) ,)
                  
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [Icon(Icons.thumb_up_outlined,size: 11,color: Color.fromRGBO(101, 101, 101, 1),),Text(' ${JumlahRecomend} people recommend this place',style: TextStyle(fontSize: 11,color: Color.fromRGBO(101, 101, 101, 1) ),)],
                  ),
                  Container(
                    child: Text("Rp${Harga}/Hour",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                  )
                  
                ],)
              ],
            ),
          )
        ],
      ),
    )));
    
  }
}