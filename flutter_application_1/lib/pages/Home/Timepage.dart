import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Component/homecomponent/HomeDownComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/HomeUPComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/TimePageComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/judulpage.dart';
import 'package:flutter_application_1/pages/Home/DetailVisserTime.dart';


class TimePage extends StatefulWidget {
  const TimePage({ Key? key }) : super(key: key);


  @override
  State<TimePage> createState() => _TimePageState();

}

class _TimePageState extends State<TimePage> {
  List datapage = [
    {'lokasigambar' : 'assets/logogreen.png','NamaLokasi' : 'Visser Terjun Mounth','Jumlahrecomend' : 1000,'harga' : 50000,'Location' : "St.Damar Raya",'fasilitas' : [{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'}]},
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_outlined,color: Colors.white,)),
        centerTitle: true,title: Image.asset('assets/logowhite.png',width: 51,height: 35,),backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined,color: Colors.white,)),],
        ),
        
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(231, 223, 212, 1)),
        child:
                ListView(
                padding: EdgeInsets.only(top: 0),
              children: [
                HomeUpComponent(color1: 0xff656565, color2: 0xff656565, color3: 0xff656565, color4: 0xffffffff),
                carousel(items: [
                  CarouselList(lokasiGambar: "assets/logowhite.png"),
                  CarouselList(lokasiGambar: "assets/logowhite.png"),
                  CarouselList(lokasiGambar: "assets/logowhite.png"),
                ]),
                judulpage(judul: "Time Visser",),
                Column(
                  children: datapage.map((val){
                    return TimePageComponent(press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailVisserTime(judul: val['NamaLokasi'], recommend: val['Jumlahrecomend'] , harga: val['harga'],Location: val['Location'],Fasilitas: val['fasilitas'],press: (){},)));
                    }, LokasiGambar: val['lokasigambar'], NamaLokasi: val['NamaLokasi'], JumlahRecomend: val['Jumlahrecomend'], Harga: val['harga']);
                  }).toList()
                )
              ],
            ),),
        bottomNavigationBar: HomeDownComponent(color1: 0xffffffff, color2: 0xff656565, color3: 0xff656565, color4: 0xff656565),
        );
  }
}