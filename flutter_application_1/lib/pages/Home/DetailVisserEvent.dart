import 'package:flutter/material.dart';
class DetailVisserEvent extends StatefulWidget {
  String Lokasigambar ;
  String judul ;

  DetailVisserEvent({ Key? key,
  required this.Lokasigambar,
  required this.judul,
   }) : super(key: key);

  @override
  State<DetailVisserEvent> createState() => _DetailVisserEventState();
}

class _DetailVisserEventState extends State<DetailVisserEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Event Details"),
      ),
      body: Stack(
        children: [
          Column(
          children: [
            Container(
              child: Image.asset(widget.Lokasigambar),
            ),
            Container(
            )
          ],
        ),
        Container(
          height: 60,
          margin: EdgeInsets.only(top: 210,left: 40,right: 40),
          child : Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20,right: 5),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 60),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: CircleAvatar(
                        backgroundColor: Colors.amberAccent,
                      ),
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              Text("Recommend by 1200 people",style: TextStyle(color: Color(0xff50777A),fontSize: 11),)
            ],
          ),
          decoration: BoxDecoration(
            color: Color(0xffF0EBE5),
            borderRadius : BorderRadius.all(Radius.circular(50))
          ),
        )
        )], 
        
      ),
    );
  }
}