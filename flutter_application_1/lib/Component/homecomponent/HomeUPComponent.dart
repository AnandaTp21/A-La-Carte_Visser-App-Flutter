import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home/EventPage.dart';
import 'package:flutter_application_1/pages/Home/RecommendPage.dart';
import 'package:flutter_application_1/pages/Home/Timepage.dart';
import 'package:flutter_application_1/pages/Home/WeightPage.dart';

class HomeUpComponent extends StatelessWidget {
  final int color1;
  final int color2;
  final int color3;
  final int color4;
  const HomeUpComponent({ Key? key ,required this.color1,required this.color2,required this.color3,required this.color4}) : super(key: key);
static const IconData scale = IconData(0xf0564, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendPage()));
          }, 
          child: Column(
            children: [
            Icon(Icons.recommend_outlined,color: Color(color1),),
            Text("Recomend",style: TextStyle(color: Color(0xff656565)))],),
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => EventPage()));
          }, 
          child: Column(
            children: [
            Icon(Icons.event_outlined,color: Color(color2),),
            Text("Event",style: TextStyle(color: Color(0xff656565)),)],),
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => WeightPage()));
          }, 
          child: Column(
            children: [
            Icon(scale,color: Color(color3),),
            Text("Weight",style: TextStyle(color: Color(0xff656565)))],),
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => TimePage()));
          }, 
          child: Column(
            children: [
            Icon(Icons.timer_outlined,color: Color(color4),),
            Text("Time",style: TextStyle(color: Color(0xff656565)))],),
          ),
          
        ],
      ),
    );
  }
}