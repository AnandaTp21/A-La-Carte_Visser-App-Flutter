import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  TextEditingController pencarian = TextEditingController();
  Search({ Key? key ,
  required this.pencarian}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff50777A).withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        title: TextField(
          controller: widget.pencarian,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffffffff).withOpacity(0.6),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined))
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 430,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/logogreen.png"),fit: BoxFit.fill)
          ),
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Event not found",style: TextStyle(fontSize:45,fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text("Try searching the event with a different keyword",style: TextStyle(fontSize: 14),),
              ),
              Text("a different keyword",style: TextStyle(fontSize: 14))
            ],
          
          )
        ),
      ),
    );
  }
}