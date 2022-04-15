import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Component/homecomponent/HomeDownComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/HomeUPComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/judulpage.dart';
import 'package:flutter_application_1/Provider/Home_Provider.dart';
import 'package:provider/provider.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({ Key? key }) : super(key: key);

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    final datarecoment = Provider.of<Home_Provider>(context);
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
                HomeUpComponent(color1: 0xffffffff, color2: 0xff656565, color3: 0xff656565, color4: 0xff656565),
                carousel(items: datarecoment.AmbilCarouselEvent.map((e){
                  return CarouselList(lokasiGambar: e);
                }).toList()),
                judulpage(judul: "Recommend Visser"),
              ],
            ),
          ),
        bottomNavigationBar: HomeDownComponent(color1: 0xffffffff, color2: 0xff656565, color3: 0xff656565, color4: 0xff656565),

    );
  }
}