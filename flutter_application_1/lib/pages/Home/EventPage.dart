import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Component/homecomponent/EventPageComponent.dart';

import 'package:flutter_application_1/Component/homecomponent/HomeUPComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/judulpage.dart';
import 'package:flutter_application_1/Provider/Home_Provider.dart';
import 'package:flutter_application_1/pages/Home/DetailVisserEvent.dart';
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
    return Container(
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
                    return EventPageComponent(press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailVisserEvent()));
                    }, LokasiGambar: val['lokasigambar'], NamaLokasi: val['NamaLokasi'], JumlahRecomend: val['Jumlahrecomend'], Tanggal: val['tanggal'], Harga: val['harga']);
                  }).toList(),
                )
              ],
            ),
          );
        

  }
}