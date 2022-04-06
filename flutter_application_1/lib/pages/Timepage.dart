import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/AppbarSearchAndSort.dart';
import 'package:flutter_application_1/Component/TimePageComponent.dart';

class TimePage extends StatefulWidget {
  const TimePage({ Key? key }) : super(key: key);


  @override
  State<TimePage> createState() => _TimePageState();

}

class _TimePageState extends State<TimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Container(width: 120,height: 1,color: Colors.black,),
                    Text("Time Visser",style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Container(width: 120,height: 1,color: Colors.black,),
                  ]),
                ),
                TimePageComponent(press: (){}, LokasiGambar: 'assets/logogreen.png', NamaLokasi: 'NamaLokasi', JumlahRecomend: '1000', Harga: '50000')
              ],
            ),)
            
          ],
        )
          ),
        );
  }
}