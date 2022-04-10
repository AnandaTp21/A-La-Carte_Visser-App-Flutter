import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/HomeUPComponent.dart';
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
       appBar: AppBar(
        leading: TextButton(onPressed: (){}, child: Icon(Icons.filter_alt_outlined,color: Colors.white,)),
        centerTitle: true,title: Image.asset('assets/logowhite.png',width: 51,height: 35,),backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        actions: [TextButton(onPressed: (){}, child: Icon(Icons.search_outlined,color: Colors.white,)),],
        ),
      backgroundColor: Color(0xffE7DFD4),
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(231, 223, 212, 1)),
        child: 
            ListView(
                padding: EdgeInsets.only(top: 0),
              children: [
                HomeUpComponent(color1: 0xff656565, color2: 0xff656565, color3: 0xffffffff, color4: 0xff656565),
                judulpage(judul: "Weight Visser",),
                WeightPageComponent(press: (){}, LokasiGambar: 'assets/logogreen.png', NamaLokasi: 'Visser Terjun Mounth', JumlahRecomend: 1000, Harga: '50.000',Hargaawal: '60000',)
              ],
            ),
          ),
    );
  }
}