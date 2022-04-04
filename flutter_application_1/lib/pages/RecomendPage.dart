import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/RecommendPageComponent.dart';

class RecomendPage extends StatefulWidget {
  const RecomendPage({ Key? key }) : super(key: key);

  @override
  State<RecomendPage> createState() => _RecomendPageState();
}

class _RecomendPageState extends State<RecomendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RecommendPageComponent(LokasiGambar: 'assets/logogreen.png', NamaLokasi: 'Visser Siombak Pound', JumlahRecomend: '120', Waktu: 'Its Visser Time', Harga: '50.000'),
    );
  }
}