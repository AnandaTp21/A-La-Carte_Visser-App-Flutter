
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:provider/provider.dart';
class utama extends StatefulWidget {
  const utama({ Key? key }) : super(key: key);

  @override
  State<utama> createState() => _utamaState();
}

class _utamaState extends State<utama> {
  bool search = false;
  @override
  Widget build(BuildContext context) {
    var bottomcomponent = Provider.of<bottomprovider>(context);
    return Scaffold(
      appBar: search?
      AppBar(
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
          setState(() {
            search = false;
          });
        },),
      )
      :AppBar(
        leading: IconButton(
            onPressed: () {
              
            },
            icon: Icon(
              Icons.filter_alt_outlined,
              color: Colors.white,
            )),
        centerTitle: true,
        title: Image.asset(
          'assets/logowhite.png',
          width: 51,
          height: 35,
        ),
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  search = true;
                });
              },
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              )),
        ],
      ),
      body: bottomcomponent.Pages[bottomcomponent.params],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
         backgroundColor: Color(0xffE7DFD4),
        currentIndex: bottomcomponent.params,
        unselectedItemColor: Color(0xff656565),
        selectedItemColor: Color(0xffffffff),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.storefront_outlined),label: "Store"),
          BottomNavigationBarItem(icon: Icon(Icons.confirmation_num_outlined),label: "Num"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
        ],
        onTap: (int angka){
          bottomcomponent.perubahanbottom(angka);
        },
        ),
    );
  }
}