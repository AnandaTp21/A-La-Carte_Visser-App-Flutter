import 'package:flutter/material.dart';
class DetailVisserEvent extends StatefulWidget {
  const DetailVisserEvent({ Key? key }) : super(key: key);

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
              
            ),
            Container(
              
            )
          ],
        ),
        Container(
          
        )
        ], 
      ),
    );
  }
}