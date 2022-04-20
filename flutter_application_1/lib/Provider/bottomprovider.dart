import 'package:flutter/material.dart';
import 'package:flutter_application_1/freepage.dart';
import 'package:flutter_application_1/pages/Home/EventPage.dart';
import 'package:flutter_application_1/pages/Home/RecommendPage.dart';
import 'package:flutter_application_1/pages/Home/Timepage.dart';
import 'package:flutter_application_1/pages/Home/WeightPage.dart';
import 'package:flutter_application_1/pages/Home/utamapage.dart';

class bottomprovider extends ChangeNotifier{
  int _params = 0;
  int _params2 = 0;
  List _Pages = [utamapage(),freepage(),freepage(),freepage()];
  List _pages2 = [RecommendPage(),EventPage(),WeightPage(),TimePage()];
  List get Pages => _Pages;
  int get params => _params;
  int get params2 => _params2;
  List get Pages2 => _pages2;
  void perubahanbottom(int angka){
    _params = angka;
    notifyListeners();

  }
  void perubahanparams(int angkas){
    _params2  = angkas;
    notifyListeners();
  }
}