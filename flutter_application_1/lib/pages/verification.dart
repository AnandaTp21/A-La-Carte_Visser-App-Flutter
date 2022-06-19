import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/login_Provider.dart';
import 'package:flutter_application_1/pages/utama.dart';
import 'package:provider/provider.dart';

class Verification extends StatefulWidget {
  String mobile;
  String username;
  String password;
  String email;
  Verification({ Key? key ,
  required this.mobile,
  required this.email,
  required this.password,
  required this.username,
  
  }) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  TextEditingController code1 = TextEditingController();
  TextEditingController code2 = TextEditingController();
  TextEditingController code3 = TextEditingController();
  TextEditingController code4 = TextEditingController();
  bool errorcode = false;
  @override
  Widget build(BuildContext context) {
    var account = Provider.of<account_Provider>(context);
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        title: Image.asset(
          'assets/logowhite.png',
          width: 51,
          height: 35,
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20 ,right: 20,top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Verification",style: TextStyle(fontSize: 24,color: Color(0xff120D26)),),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text("We've Send you the verification"),
            ),
            Text("code on ${widget.mobile}"),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Center(
                child: errorcode?
              Text("See Your Phone Messages",style: TextStyle(color :Colors.red,))
              :Container(),
              )
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 40),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 60,
                child: TextField(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  controller: code1,
                  maxLength: 1,
                  decoration: InputDecoration(
                    hintText: "-",
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.all(25),
                    filled: true,
                    fillColor: Color.fromARGB(40, 32, 62, 88),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                  ),
                ),),
                Container(width: 60,
                child: TextField(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  controller: code2,
                  maxLength: 1,
                  decoration: InputDecoration(
                    hintText: "-",
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.all(25),
                    filled: true,
                    fillColor: Color.fromARGB(40, 32, 62, 88),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                  ),
                ),),
                Container(width: 60,
                child: TextField(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  controller: code3,
                  maxLength: 1,
                  decoration: InputDecoration(
                    hintText: "-",
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.all(25),
                    filled: true,
                    fillColor: Color.fromARGB(40, 32, 62, 88),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                  ),
                ),),
                Container(width: 60,
                child: TextField(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  controller: code4,
                  maxLength: 1,
                  decoration: InputDecoration(
                    hintText: "-",
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.all(25),
                    filled: true,
                    fillColor: Color.fromARGB(40, 32, 62, 88),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                  ),
                ),),
              ],
            ),
            ),
            Center(
              child: ElevatedButton(onPressed: (){
                  if(code1.text.isEmpty || code2.text.isEmpty||code3.text.isEmpty||code4.text.isEmpty){
                    setState(() {
                      errorcode = true;
                    });
                  }
                  else{
                    account.useractive(widget.username, widget.password, widget.mobile, widget.email);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const utama()));
                  }
              
              }, child: Text("CONTINUE",style: TextStyle(fontSize: 20),),style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80,vertical: 20),
                primary: Color(0xff203E58),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))
                )
              ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Re-send code in"),
                    Text("   0:20",style: TextStyle(color: Color(0xff5669FF)),)
                  ],
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}