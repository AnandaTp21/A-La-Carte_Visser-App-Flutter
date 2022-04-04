import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool visibilty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1000,
        decoration: BoxDecoration(color: Color(0xffE7DFD4)),
        child : Column(
        children: [
          
          Container(
            margin: EdgeInsets.only(top: 50),
            child :Image.asset('assets/logogreen.png',width: 140,height: 97,)
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 320,
              decoration: BoxDecoration(color : Color.fromARGB(40, 32, 62, 88),borderRadius: BorderRadius.all(Radius.circular(100)),),
              child :TextFormField(
                style: TextStyle(fontSize: 15,color:Color.fromRGBO(255, 255, 255, 60,) ),
            decoration: InputDecoration(
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
              decoration: BoxDecoration(color : Color.fromARGB(40, 32, 62, 88),borderRadius: BorderRadius.all(Radius.circular(100)),),
              child :TextFormField(
                style: TextStyle(fontSize: 15,color:Color.fromRGBO(255, 255, 255, 60,) ),
            decoration: InputDecoration(
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
              decoration: BoxDecoration(color : Color.fromARGB(40, 32, 62, 88),borderRadius: BorderRadius.all(Radius.circular(100)),),
              child :TextFormField(
                style: TextStyle(fontSize: 15,color:Color.fromRGBO(255, 255, 255, 60,) ),
            decoration: InputDecoration(
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
              decoration: BoxDecoration(color : Color.fromARGB(40, 32, 62, 88),borderRadius: BorderRadius.all(Radius.circular(100)),),
              child :TextFormField(
                obscureText: visibilty,
                style: TextStyle(fontSize: 15,color:Color.fromRGBO(255, 255, 255, 0.6,) ),
            decoration: InputDecoration(
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
              child: ElevatedButton(onPressed: (){}, child: Text("Register",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1,),fontWeight: FontWeight.bold)),
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
                Text("Already Have an account ?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const login()));
                }, child: const Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),
                style: TextButton.styleFrom(
                  primary: Color.fromRGBO(32, 62, 88, 1)
                ),)
              ],)
            ),
            
            ],
      ),
      )
    );
  }
  
}