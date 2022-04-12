import 'package:flutter/material.dart';

class DetailVisserComponent extends StatelessWidget {
  final IconData icon;
  final String JudulFasilitas;
  final String KeteranganFasilitas;
  const DetailVisserComponent({ Key? key 
  ,required this.icon
  ,required this.JudulFasilitas
  ,required this.KeteranganFasilitas

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(icon),
          Container(
            margin: EdgeInsets.only(left: 10),
            child :Column(
              children: [
                 Row(
                  children: [
                    Text(JudulFasilitas,style: TextStyle(fontWeight: FontWeight.w500),)],
                  ),
                  
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(KeteranganFasilitas,style: TextStyle(color: Color(0xff747688),fontSize: 10),)],
                )
            ],
          ))
          ],
        ),
    );
  }
}