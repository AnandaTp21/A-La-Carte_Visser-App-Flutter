import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:provider/provider.dart';
class utamapage extends StatefulWidget {
  const utamapage({ Key? key }) : super(key: key);

  @override
  State<utamapage> createState() => _utamapageState();
}

class _utamapageState extends State<utamapage> {
  @override
  Widget build(BuildContext context) {
    var navigasi = Provider.of<bottomprovider>(context);
    return DefaultTabController(length: 4, child: Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        ),
        body: Column(children: [
          Container(
            height: 60,
            color: Color(0xffE7DFD4),
              child: Container(margin: EdgeInsets.only(top: 12),child: TabBar(
                tabs: [
            Column(children: [Icon(Icons.thumb_up_alt_outlined),Text("Reccomend",style: TextStyle(fontSize: 10),)],),
            Column(children: [Icon(Icons.event_outlined),Text("event",style: TextStyle(fontSize: 10),)],),
            Column(children: [Icon(Icons.scale_outlined),Text("weight",style: TextStyle(fontSize: 10),)],),
            Column(children: [Icon(Icons.timer_outlined),Text("time",style: TextStyle(fontSize: 10),)],),
            ],unselectedLabelColor: Color(0xff656565),),),),
          Expanded(child: TabBarView(children: navigasi.Pages2))
          ],)  
    ));
  }
}