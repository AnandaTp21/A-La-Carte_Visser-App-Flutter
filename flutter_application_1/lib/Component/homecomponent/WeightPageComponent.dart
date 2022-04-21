import 'package:flutter/material.dart';

class WeightPageComponent extends StatelessWidget {
  final String LokasiGambar;
  final String NamaLokasi;
  final int JumlahRecomend;
  final int Harga;
  final VoidCallback press;
  final int Hargaawal;
  const WeightPageComponent({ Key? key,
    required this.press,
    required this.LokasiGambar,
    required this.NamaLokasi,
    required this.JumlahRecomend,
    required this.Hargaawal,
    required this.Harga 
   }) : super(key: key);
  static const IconData scale = IconData(0xf0564, fontFamily: 'MaterialIcons');
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
      height: 300,
    child : TextButton(style: TextButton.styleFrom(padding: EdgeInsets.all(0)),onPressed: press, child: Container(
      
      child: Column(
        children: [
          Container(
            child: Image.asset(LokasiGambar),
          ),
          Container(
            color: Colors.white.withOpacity(0.5),
            padding: EdgeInsets.only(bottom:6),
            child: Container ( 
              margin: EdgeInsets.symmetric(horizontal: 15),
              child :Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 11),
                      child: Text(NamaLokasi,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  ),Container(
                      margin: EdgeInsets.only(top: 14),
                      child : Row(
                    children: [Icon(Icons.thumb_up_outlined,size: 11,color: Color.fromRGBO(101, 101, 101, 1),),Text(' ${JumlahRecomend} people recommend this place',style: TextStyle(fontSize: 11,color: Color.fromRGBO(101, 101, 101, 1) ),)],
                  )
                    ),
                  
                ],),
                Column(
                  children: [ 
                    Container(
                    margin: EdgeInsets.only(top: 8),
                    child:Row(
                    children: [Text("It's a Visser Weight",style: TextStyle(fontSize: 11,color: Color.fromRGBO(101, 101, 101, 1) )),
                    Icon(Icons.scale,size: 14,color: Color.fromRGBO(101, 101, 101, 1),)],
                  ) ,),
                    Container(
                      margin: EdgeInsets.only(top: 1),
                      child: Text("Rp${Hargaawal}/Kg",style: TextStyle(fontSize: 12,color:Color.fromRGBO(101, 101, 101, 1),decoration: TextDecoration.lineThrough)),
                    ),
                    
                  Container(
                    margin: EdgeInsets.only(top: 1),
                    child: Text("Rp${Harga}/Kg",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                  )
                  ],
                ),
              ],
            )),
          )
        ],
      ),
    ))
    );
  }
}