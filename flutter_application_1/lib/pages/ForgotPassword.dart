import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({ Key? key }) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      appBar: AppBar(centerTitle: true,title: Image.asset('assets/logowhite.png',width: 51,height: 35,),backgroundColor: Color.fromRGBO(80, 119, 122, 1),),
      body: Container(
        child : Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child :Image.asset('assets/logogreen.png',width: 200,height: 130,)
            ),

            Container(
              margin: EdgeInsets.only(top: 50),
              width: 320,
              decoration: BoxDecoration(color : Color.fromARGB(40, 32, 62, 88),borderRadius: BorderRadius.all(Radius.circular(100)),),
              child :TextFormField(
                style: TextStyle(fontSize: 15,color:Color.fromRGBO(255, 255, 255, 60,) ),
            decoration: InputDecoration(
              hintText: 'Enter Your email address',
              hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 60,)),
              prefixIcon: Icon(Icons.email_outlined,color: Color.fromRGBO(255, 255, 255, 60,),),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),)
            ),
            ),
            Container(

              margin: EdgeInsets.only(left: 35, right: 35,top: 10),
              child: const Text("We will Send you a message to set or reset our new passsword",style: TextStyle(color: Color.fromRGBO(115, 114, 114, 0.6)),),
            ),
            Container( 
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(onPressed: (){}, child: Text("Send Now",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1,),fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal : 50),
                primary: Color.fromRGBO(32, 62, 88, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100))
                )
              ),),
            ),
            ],
      ),
      ),
    );
  }
}