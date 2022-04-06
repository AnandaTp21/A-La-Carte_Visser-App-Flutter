import 'package:flutter/material.dart';

class ABSAS extends StatelessWidget {
  const ABSAS({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(80, 119, 122, 1)
      ),
      padding: EdgeInsets.symmetric(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top:30 ),
          child : TextButton(onPressed: (){}, child: Icon(Icons.filter_alt_outlined,color:Colors.white),style:
          TextButton.styleFrom(
            padding: EdgeInsets.all(0)
          )
          ,)
          ),
          Container(margin: EdgeInsets.only(top: 30,right: 10),
          child :Image.asset('assets/logowhite.png')),
          Container(
            margin: EdgeInsets.only(top: 30),
          child : TextButton(onPressed: (){}, child: Icon(Icons.search_outlined,color:Colors.white),style:
          TextButton.styleFrom(
            padding: EdgeInsets.all(0)
          )
          ,)
          ),
                   
        ],
      ),
    );
  }
}