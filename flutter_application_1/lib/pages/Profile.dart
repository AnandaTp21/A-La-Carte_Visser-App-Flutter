import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/login_Provider.dart';
import 'package:provider/provider.dart';
class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var Account = Provider.of<account_Provider>(context);
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      appBar: AppBar(
        leading: Text(""),
        backgroundColor: Color(0xff50777A),
        title: Text("Personal Detail",style: TextStyle(color: Colors.white),),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: Container(
        child : ListView(
          children: [
            Container(
              height: 370,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 65),
                    decoration: BoxDecoration(
                      color: Color(0xff50777A),
                      borderRadius: BorderRadius.all(Radius.circular(100))
                    ),
                    width: 150,
                    height: 150,
                    child: Center(child: Text(Account.active['Username'].toString().substring(0,1),style: TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.w100),),
                  ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(Account.active['Username'],style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,bottom: 5),
                child: Text(Account.active['NoTelp'],style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),),
              ),
              Container(
                child: Text(Account.active['Email'],style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),),
              ),
              ],
              ),),
              Container(
                padding: EdgeInsets.symmetric(vertical :20),
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Color(0xffF0EBE5),
                  borderRadius:BorderRadius.all(Radius.circular(13)) 
                ),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Text("Account setting",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                    ),
                    ListTile(
                      onTap: (){},
                      title: Text("Your info",style: TextStyle(fontWeight: FontWeight.w500)),
                      subtitle: Text("Edit your personal information"),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined,color: Colors.black,size: 30,),
                      )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical :20),
                margin: EdgeInsets.only(left: 30,right: 30,top: 8),
                decoration: BoxDecoration(
                  color: Color(0xffF0EBE5),
                  borderRadius:BorderRadius.all(Radius.circular(13)) 
                ),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Text("Extras",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                    ),
                    ListTile(
                      onTap: (){},
                      subtitle: Text("Notification"),
                      trailing: Container(
                        margin: EdgeInsets.only(top: 22),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(32, 62, 88, 1),
                                borderRadius: BorderRadius.all(Radius.circular(25))
                              ),
                              child: Center(child: Text("1",style: TextStyle(color: Colors.white,fontSize: 12),)),
                            ),
                            Container(
                              child: Icon(Icons.keyboard_arrow_right_outlined,color: Colors.black,size: 30,),
                            )
                          ],
                        ),
                      )
                      ),
                      Divider(
                        color: Color.fromARGB(102, 158, 158, 158),
                        endIndent: 17,
                        indent: 17,
                        height: 1,
                      ),
                      ListTile(
                      onTap: (){},
                      subtitle: Text("Payment Methods"),
                      trailing: Container(
                        margin: EdgeInsets.only(top: 22),
                        child: Icon(Icons.keyboard_arrow_right_outlined,color: Colors.black,size: 30,),
                      )
                      ),
                      Divider(
                        color: Color.fromARGB(102, 158, 158, 158),
                        endIndent: 17,
                        indent: 17,
                        height: 1,
                      ),
                      ListTile(
                      onTap: (){},
                      subtitle: Text("Help"),
                      trailing: Container(
                        margin: EdgeInsets.only(top: 22),
                        child: Icon(Icons.keyboard_arrow_right_outlined,color: Colors.black,size: 30,),
                      )
                      ),
                      Divider(
                        color: Color.fromARGB(102, 158, 158, 158),
                        endIndent: 17,
                        indent: 17,
                        height: 1,
                      ),
                      ListTile(
                      onTap: (){},
                      subtitle: Text("Privacy & Policy"),
                      trailing: Container(
                        margin: EdgeInsets.only(top: 22),
                        child: Icon(Icons.keyboard_arrow_right_outlined,color: Colors.black,size: 30,),
                      )
                      ),
                      Divider(
                        color: Color.fromARGB(102, 158, 158, 158),
                        endIndent: 17,
                        indent: 17,
                        height: 1,
                      ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical : 30,horizontal: 120),
                child: TextButton(child: Text("Log Out",style: TextStyle(fontSize: 25),),onPressed: (){
                  Navigator.pop(context);
                },style: TextButton.styleFrom(
                  primary: Color.fromRGBO(32, 62, 88, 1)
                ),),
              )
          ],
        )
      ),
    );
  }
}