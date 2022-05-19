import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:provider/provider.dart';
class utama extends StatefulWidget {
  const utama({ Key? key }) : super(key: key);

  @override
  State<utama> createState() => _utamaState();
}

class _utamaState extends State<utama> {
  @override
  Widget build(BuildContext context) {
    var bottomcomponent = Provider.of<bottomprovider>(context);
    return Scaffold(
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