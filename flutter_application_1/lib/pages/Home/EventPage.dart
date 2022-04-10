import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/EventPageComponent.dart';
import 'package:flutter_application_1/Component/HomeUPComponent.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Component/judulpage.dart';

class EventPage extends StatefulWidget {
  const EventPage({ Key? key }) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
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
        child: 
            ListView(
                padding: EdgeInsets.only(top: 0),
              children: [
                HomeUpComponent(color1: 0xff656565, color2: 0xffffffff, color3: 0xff656565, color4: 0xff656565),
                carousel(items: [
                  CarouselList(lokasiGambar: "assets/logowhite.png"),
                  CarouselList(lokasiGambar: "assets/logowhite.png"),
                  CarouselList(lokasiGambar: "assets/logowhite.png"),
                ]),
                judulpage(judul: "Event Visser"),
                EventPageComponent(press: (){}, LokasiGambar: 'assets/logogreen.png', NamaLokasi: "NamaLokasi", JumlahRecomend: 1000, Harga: "150.000",Tanggal: "12 March 2020",)
              ],
            ),
          ),
    );
  }
}