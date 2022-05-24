import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Provider/login_Provider.dart';
import 'package:flutter_application_1/pages/ForgotPassword.dart';
import 'package:flutter_application_1/pages/register.dart';
import 'package:flutter_application_1/pages/utama.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController Username = TextEditingController();
  TextEditingController Password = TextEditingController();
  String Error = "";
  bool visibilty = true;
  bool? check = false;
  int dapat = -1;
  @override
  Widget build(BuildContext context) {
    final Account = Provider.of<account_Provider>(context);
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      body: Container(
        child : ListView(
        children: [Column(
          children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child :Image.asset('assets/logogreen.png',width: 296,height: 200,)
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
             child : Text(Error,style:GoogleFonts.poppins(color: Colors.red),),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 320,
              decoration: BoxDecoration(color : Color.fromARGB(40, 32, 62, 88),borderRadius: BorderRadius.all(Radius.circular(100)),),
              child :TextFormField(
                controller: Username,
                style: TextStyle(fontSize: 15,color:Color.fromRGBO(255, 255, 255, 60,) ),
            decoration: InputDecoration(
              hintText: 'Enter Your Username',
              hintStyle: GoogleFonts.poppins(color : Color.fromRGBO(255, 255, 255, 0.6,)),
              prefixIcon: Icon(Icons.person_outline_outlined,color: Color.fromRGBO(255, 255, 255, 60,),),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),)
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 320,
              decoration: BoxDecoration(color : Color.fromARGB(40, 32, 62, 88),borderRadius: BorderRadius.all(Radius.circular(100)),),
              child :TextFormField(
                controller: Password,
                obscureText: visibilty,
                style: GoogleFonts.poppins(color : Color.fromRGBO(255, 255, 255, 0.6,)),
            decoration: InputDecoration(
              hintText: 'Enter Your Password',
              hintStyle: GoogleFonts.poppins(color : Color.fromRGBO(255, 255, 255, 0.6,)),
              prefixIcon: Icon(Icons.lock_outlined,color: Color.fromRGBO(255, 255, 255, 0.6,),),
              suffixIcon: Container (margin : EdgeInsets.only(right: 20),child: IconButton(onPressed: (){
                if(visibilty == true){
                  setState((){
                    visibilty = false;
                  });
                }
                else{
                  setState(() {
                    visibilty = true;
                  });
                }
              }, icon:visibilty?Icon(Icons.visibility_off_outlined ,color: Colors.grey,) : Icon(Icons.visibility_outlined,color: Colors.grey,))),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),)
            ),
            ),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(value: check,onChanged: (val){
                        setState(() {
                          check = val;
                        });
                      },),
                      Text("Remember Me")
                    ],
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPassword()));
                  }, child: Text("Forgot Password ?",style: GoogleFonts.poppins(color: Color.fromRGBO(80, 119, 122, 1),fontWeight: FontWeight.bold),))
                ],
              ),
            ),
            Container( 
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(onPressed: (){
                setState(() {
                  if(Username.text.isEmpty || Password.text.isEmpty){
                    Error = "Tidak Boleh Ada Yang Kosong";
                  }
                  else{
                    for(var i=0; i < Account.ambildatalist.length;i++){
                      if(Username.text == Account.ambildatalist[i]['Username'] && Password.text == Account.ambildatalist[i]['Password']){
                          dapat = i;
                      }
                    }
                    if(dapat != -1){
                        Account.useractive(Account.ambildatalist[dapat]['Username'],Account.ambildatalist[dapat]['Password'],Account.ambildatalist[dapat]['NoTelp'],Account.ambildatalist[dapat]['Email']);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> utama()));
                      }
                    else{
                      Error = "Silahkan Melakukan Register";
                    }
                  }
                });
              } ,child: Text("LOGIN",style: GoogleFonts.poppins(color: Color.fromRGBO(255, 255, 255, 1,),fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal : 100),
                primary: Color.fromRGBO(32, 62, 88, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100))
                )
              ),),
            ),
            Container(
              child : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Don't have an account yet ?",style: GoogleFonts.poppins(),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Register()));
                }, child:  Text("Register",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                style: TextButton.styleFrom(
                  primary: Color.fromRGBO(32, 62, 88, 1)
                ),),
              ],)
            )
            ],
        )]
      ),
      )
    );
  }
}