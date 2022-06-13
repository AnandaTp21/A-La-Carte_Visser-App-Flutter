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
  bool search = false;
  Widget build(BuildContext context) {
    var navigasi = Provider.of<bottomprovider>(context);
    return DefaultTabController(length: 4, child: Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      appBar: search?
      AppBar(
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        leading: (
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              setState(() {
                search = false;
              });
            },
          )
        ),
        title : TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffffffff).withOpacity(0.6),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined))
          ),
        ),
      ):AppBar(
        leading: IconButton(
            onPressed: () {
              
            },
            icon: Icon(
              Icons.filter_alt_outlined,
              color: Colors.white,
            )),
        centerTitle: true,
        title: Image.asset(
          'assets/logowhite.png',
          width: 51,
          height: 35,
        ),
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  search = true;
                });
              },
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              )),
        ],
      ),
        body: Column(children: [
          Container(
            height: 60,
            color: Color(0xffE7DFD4),
              child: Container(margin: EdgeInsets.only(top: 12),child: TabBar(
                tabs: [
                Tab(iconMargin: EdgeInsets.only(bottom: 0),icon: Icon(Icons.thumb_up_alt_outlined),child: Text("Reccomend",style: TextStyle(fontSize: 10),),),
                Tab(iconMargin: EdgeInsets.only(bottom: 0),icon: Icon(Icons.event_outlined),child: Text("event",style: TextStyle(fontSize: 10),),),
                Tab(iconMargin: EdgeInsets.only(bottom: 0),icon: Icon(Icons.scale_outlined),child: Text("weight",style: TextStyle(fontSize: 10),),),
                Tab(iconMargin: EdgeInsets.only(bottom: 0),icon: Icon(Icons.timer_outlined),child: Text("time",style: TextStyle(fontSize: 10),),),
            ],unselectedLabelColor: Color(0xff656565),),),),
          Expanded(child: TabBarView(children: navigasi.Pages2))
          ],)  
    ));
  }
}