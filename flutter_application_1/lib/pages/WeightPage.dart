import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/WeightPageComponent.dart';
import 'package:flutter_application_1/Component/judulpage.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({ Key? key }) : super(key: key);

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(231, 223, 212, 1)),
        child: 
            ListView(
                padding: EdgeInsets.only(top: 0),
              children: [
                judulpage(judul: "Weight Visser",),
                WeightPageComponent(press: (){}, LokasiGambar: 'assets/logogreen.png', NamaLokasi: 'Visser Terjun Mounth', JumlahRecomend: '1000', Harga: '50.000',Hargaawal: '60000',)
              ],
            ),
          ),
    );
  }
}