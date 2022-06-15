import 'package:flutter/material.dart';
import 'package:flutter_application_1/freepage.dart';
import 'package:flutter_application_1/pages/Home/EventPage.dart';
import 'package:flutter_application_1/pages/Home/RecommendPage.dart';
import 'package:flutter_application_1/pages/Home/Timepage.dart';
import 'package:flutter_application_1/pages/Home/WeightPage.dart';
import 'package:flutter_application_1/pages/Home/utamapage.dart';
import 'package:flutter_application_1/pages/Payment%20Pages/OrderHistory.dart';
import 'package:flutter_application_1/pages/Profile.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreCart.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreCategoryDetail.dart';
import 'package:flutter_application_1/pages/Store%20pages/StoreDetail.dart';
import 'package:flutter_application_1/pages/Store%20pages/storepage.dart';
import 'package:flutter_application_1/pages/Store%20pages/UtamaStore.dart';

class bottomprovider extends ChangeNotifier {
  int _params = 0;
  int _params2 = 0;
  int _helparams2 = 0;
  List _Pages = [utamapage(), UtamaStore(), OrderHistory(), Profile()];
  List _PagesStore = [
    StorePage(),
    StoreDetail(),
    StoreCategoryDetail(),
    StoreCart()
  ];
  List<Widget> _pages2 = [
    RecommendPage(),
    EventPage(),
    WeightPage(),
    TimePage()
  ];
  List get PagesStore => _PagesStore;
  List get Pages => _Pages;
  int get params => _params;
  int get params2 => _params2;
  int get helpparams => _helparams2;
  List<Widget> get Pages2 => _pages2;

  void perubahanbottom(int angka) {
    _params = angka;
    notifyListeners();
  }

  void perubahanparamsstore(int angka) {
    _params2 = angka;
    notifyListeners();
  }

  void perubahanpembantuparamssotre(int angka) {
    _helparams2 = angka;
    notifyListeners();
  }
}
