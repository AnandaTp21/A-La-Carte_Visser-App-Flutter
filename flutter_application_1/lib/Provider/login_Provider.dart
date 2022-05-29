import 'package:flutter/material.dart';

class account_Provider extends ChangeNotifier{
  final _List = [
    {'Username' : 'Admin','Password' : 'Admin123456', 'NoTelp' : '081234567890', 'Email' : 'Admin123@gmail.com'}
  ];
  List get ambildatalist => _List;
  var _Active;
  get active => _Active;
  void tambahaccount(String Username, String Password,String Telp, String Email){
    _List.add({'Username' : Username,'Password' : Password, 'NoTelp' : Telp, 'Email' : Email});
    notifyListeners();
  }
  void useractive(String Username, String Password,String Telp, String Email){
    _Active = {'Username' : Username,'Password' : Password, 'NoTelp' : Telp, 'Email' : Email};
  }
}