import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/AppbarSearchAndSort.dart';
import 'package:flutter_application_1/Component/TimePageComponent.dart';
import 'package:flutter_application_1/Component/judulpage.dart';

class TimePage extends StatefulWidget {
  const TimePage({ Key? key }) : super(key: key);


  @override
  State<TimePage> createState() => _TimePageState();

}

class _TimePageState extends State<TimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(231, 223, 212, 1)),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child :ABSAS()),
            Expanded(
              flex: 8,
              child:  ListView(
                padding: EdgeInsets.only(top: 0),
              children: [
                judulpage(judul: "Time Visser",)
                ,
                TimePageComponent(press: (){}, LokasiGambar: 'assets/logogreen.png', NamaLokasi: 'NamaLokasi', JumlahRecomend: '1000', Harga: '50000')
              ],
            ),)
            
          ],
        )
          ),
        );
  }
}