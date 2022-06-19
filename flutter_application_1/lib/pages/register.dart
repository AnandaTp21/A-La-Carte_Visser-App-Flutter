

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/login_Provider.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/verification.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool visibilty = true;
  TextEditingController Username = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Mobile = TextEditingController();
  TextEditingController Password = TextEditingController();
  String pesan = "";
  int dapat = -1;
  bool susksesregis = false;
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
            child :Image.asset('assets/logogreen.png',width: 140,height: 97,)
            ),
            Text("${pesan}",style: susksesregis?TextStyle(color: Colors.green):TextStyle(color: Colors.red),),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 320,
              
              child :TextFormField(
                
                controller: Username,
                style: TextStyle(fontSize: 15,color:Color.fromRGBO(255, 255, 255, 60,) ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(40, 32, 62, 88),
              hintText: 'Username',
              hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 60,)),
              prefixIcon: Icon(Icons.person_outline_outlined,color: Color.fromRGBO(255, 255, 255, 60,),),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),)
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 18),
              width: 320,
              child :TextFormField(
                controller: Email,
                style: TextStyle(fontSize: 15,color:Color.fromRGBO(255, 255, 255, 60,) ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(40, 32, 62, 88),
              hintText: 'Email Address',
              hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 60,)),
              prefixIcon: Icon(Icons.email_outlined,color: Color.fromRGBO(255, 255, 255, 60,),),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),)
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 18),
              width: 320,
              child :TextFormField(
                controller: Mobile,
                style: TextStyle(fontSize: 15,color:Color.fromRGBO(255, 255, 255, 60,) ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(40, 32, 62, 88),
              hintText: 'Mobile Phone',
              hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 60,)),
              prefixIcon: Icon(Icons.call_outlined,color: Color.fromRGBO(255, 255, 255, 60,),),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),)
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 18),
              width: 320,
              child :TextFormField(
                controller: Password,
                obscureText: visibilty,
                style: TextStyle(fontSize: 15,color:Color.fromRGBO(255, 255, 255, 0.6,) ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(40, 32, 62, 88),
              hintText: 'Enter Your Password',
              hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.6,)),
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
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(onPressed: (){
                setState(() {
                  if(Username.text.isEmpty || Password.text.isEmpty || Email.text.isEmpty || Mobile.text.isEmpty){
                    pesan = "Tidak Boleh Ada Yang Kosong";
                    susksesregis = false;
                  }
                  else {
                    for(var i=0; i < Account.ambildatalist.length;i++){
                      if(Username.text == Account.ambildatalist[i]['Username'] && Password.text == Account.ambildatalist[i]['Password'] && Email.text == Account.ambildatalist[i]['Email']&& Mobile.text == Account.ambildatalist[i]['NoTelp']){
                          setState(() {
                            dapat = i;
                          });
                      }
                    }
                    if(dapat != -1){
                        pesan = "Account Telah Terdaftar, Silahkan Login";
                        susksesregis = true;
                      }
                    else{
                      Account.tambahaccount(Username.text, Password.text, Mobile.text, Email.text);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Verification(mobile: Mobile.text,username: Username.text,password: Password.text,email: Email.text,)));
                      susksesregis = true;
                    }
                  }
                });   
              }, child: Text("Register",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1,),fontWeight: FontWeight.bold)),
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
                Text("Already Have an account?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const login()));
                }, child: const Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),
                style: TextButton.styleFrom(
                  primary: Color.fromRGBO(32, 62, 88, 1)
                ),)
              ],)
            ),
            
            ],
        )]
      ),
      )
    );
  }
  
}