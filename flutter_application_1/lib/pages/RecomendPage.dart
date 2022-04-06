import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/AppbarSearchAndSort.dart';
import 'package:flutter_application_1/Component/RecommendPageComponent.dart';
import 'package:flutter_application_1/pages/login.dart';

class RecomendPage extends StatefulWidget {
  const RecomendPage({ Key? key }) : super(key: key);

  @override
  State<RecomendPage> createState() => _RecomendPageState();
}

class _RecomendPageState extends State<RecomendPage> {
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
            Expanded(flex: 8,
              child: ListView(
              children: [
                RecommendPageComponent(press: (){}, LokasiGambar: 'assets/logogreen.png', NamaLokasi: 'NamaLokasi', JumlahRecomend: '1000', Waktu: 'Waktu', Harga: 'Harga'),
                RecommendPageComponent(press: (){}, LokasiGambar: 'assets/logogreen.png', NamaLokasi: 'NamaLokasi', JumlahRecomend: '1000', Waktu: 'Waktu', Harga: 'Harga'),
                RecommendPageComponent(press: (){}, LokasiGambar: 'assets/logogreen.png', NamaLokasi: 'NamaLokasi', JumlahRecomend: '1000', Waktu: 'Waktu', Harga: 'Harga'),
                RecommendPageComponent(press: (){}, LokasiGambar: 'assets/logogreen.png', NamaLokasi: 'NamaLokasi', JumlahRecomend: '1000', Waktu: 'Waktu', Harga: 'Harga'),

              ],
            ))
            
          ],
        )
          ),
        )
    ;
  }
}