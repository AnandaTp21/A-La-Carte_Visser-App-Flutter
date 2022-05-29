import 'package:flutter/material.dart';
class Review extends StatefulWidget {
  final String gambar;
  final double rating;

  Review({ 
  Key? key,
  required this.gambar,
  required this.rating,

  }) : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      appBar: AppBar(
        backgroundColor: Colors.transparent ,
      ),
      body: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.gambar),
              fit: BoxFit.fill
              )
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Color(0xffF0EBE5),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("${widget.rating}",style: TextStyle(fontSize: 26),),
                      Text("2k+ ratings",style: TextStyle(color: Color(0xff686767),)) 
                      ],
                  ),
                  Row(
                    children: [
                      for(var i =0 ; i<widget.rating; i++)
                        Container(
                          margin: EdgeInsets.only(left: 3),
                          child: Icon(Icons.star,color: Color(0xffB13126),),
                        ),
                    ]
                  )
                ],
              ),
          )
        ],
      )
    );
  }
}