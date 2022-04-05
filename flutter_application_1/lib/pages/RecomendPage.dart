import 'package:flutter/material.dart';
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
        child: ListView(
          children: [
            RecommendPageComponent(press: (){},LokasiGambar: 'assets/logogreen.png', NamaLokasi: 'Visser Siombak Pound', JumlahRecomend: '120', Waktu: 'Its Visser Time', Harga: '50.000'),
          ]
          ),
        )
    );
  }
}