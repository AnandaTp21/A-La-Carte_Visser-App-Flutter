import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Component/homecomponent/EventPageComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/HomeDownComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/HomeUPComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/judulpage.dart';
import 'package:flutter_application_1/Provider/Home_Provider.dart';
import 'package:provider/provider.dart';


class EventPage extends StatefulWidget {
  const EventPage({ Key? key }) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    final dataevent = Provider.of<Home_Provider>(context);
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
                carousel(items: dataevent.AmbilCarouselEvent.map((e){
                  return CarouselList(lokasiGambar: e);
                }).toList()),
                judulpage(judul: "Event Visser"),
                Column(
                  children: dataevent.AmbilDataEvent.map((val){
                    return EventPageComponent(press: (){}, LokasiGambar: val['lokasigambar'], NamaLokasi: val['NamaLokasi'], JumlahRecomend: val['Jumlahrecomend'], Tanggal: val['tanggal'], Harga: val['harga']);
                  }).toList(),
                )
              ],
            ),
          ),
        bottomNavigationBar: HomeDownComponent(color1: 0xffffffff, color2: 0xff656565, color3: 0xff656565, color4: 0xff656565),
    );
  }
}