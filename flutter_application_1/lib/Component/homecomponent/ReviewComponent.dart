import 'package:flutter/material.dart';

class ReviewComponent extends StatefulWidget {
  final String nama;
  final String tanggal;
  final String rating;
  final String comment;
  final List? kumpulangambar;
  const ReviewComponent({ Key? key,
    required this.nama,
    required this.tanggal,
    required this.rating,
    required this.comment, 
    this.kumpulangambar,
   }) : super(key: key);

  @override
  State<ReviewComponent> createState() => _ReviewComponentState();
}

class _ReviewComponentState extends State<ReviewComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xffB13126),
                child: Text(widget.nama.substring(0,1)),),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.nama,style: TextStyle(fontSize: 16),),
                    Text(widget.tanggal,style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color:Color(0xffB13126),
                  borderRadius: BorderRadius.all(Radius.circular(7))
                ),
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 7),
                child: Text(widget.rating,style: TextStyle(
                  color: Colors.white

                ),),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 20
            ),
            child: Text(widget.comment,style: TextStyle(fontSize: 17,color: Color(0xff010F07)),),
          )
          ],
      ),

    );
  }
}