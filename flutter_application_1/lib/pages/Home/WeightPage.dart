import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Component/homecomponent/HomeDownComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/HomeUPComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/WeightPageComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/judulpage.dart';
import 'package:flutter_application_1/Provider/Home_Provider.dart';
import 'package:flutter_application_1/pages/Home/DetailVisserWeight.dart';
import 'package:provider/provider.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({ Key? key }) : super(key: key);

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  @override
  Widget build(BuildContext context) {
    final dataweight = Provider.of<Home_Provider>(context);
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
                carousel(items: dataweight.AmbilCarouselWeight.map((e){
                  return CarouselList(lokasiGambar: e);
                }).toList()),
                judulpage(judul: "Weight Visser",),
                Column(
                  children: dataweight.AmbilDataWeight.map((val){
                    return WeightPageComponent(press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailVisserWeight(judul: val['NamaLokasi'], recommend: val['Jumlahrecomend'] ,hargaawal: val['hargaawal'], harga: val['harga'],Location: val['Location'],Fasilitas: val['fasilitas'],press: (){},)));
                    }, LokasiGambar: val['lokasigambar'], NamaLokasi: val['NamaLokasi'], JumlahRecomend: val['Jumlahrecomend'], Hargaawal: val['harga'], Harga: val['hargaawal']);
                  }).toList()
                )
              ],
            ),
          ),
          bottomNavigationBar: HomeDownComponent(color1: 0xffffffff, color2: 0xff656565, color3:0xff656565, color4: 0xff656565),
    );
  }
}