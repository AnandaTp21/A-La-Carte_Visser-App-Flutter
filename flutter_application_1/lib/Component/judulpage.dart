import 'package:flutter/material.dart';

class judulpage extends StatelessWidget {
  final String judul;
  const judulpage({ Key? key ,required this.judul}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Container(width: 100,height: 1,color: Colors.black,),
                    Text(judul,style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Container(width: 100,height: 1,color: Colors.black,),
                  ]),
    );
  }
}