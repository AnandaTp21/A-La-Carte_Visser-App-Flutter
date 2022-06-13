import 'package:flutter/material.dart';

class Order_Provider extends ChangeNotifier {
  List<Map<String, dynamic>> _listKeterangan = [];
  Map<String, dynamic> _keterangan = {};

  int _orderPaymentGroup = 0;
  int _orderPaymentRadio1 = 1;
  int _orderPaymentRadio2 = 2;
  int _orderPaymentRadio3 = 3;

  List get getListKeterangan => _listKeterangan;
  Map get getKeterangan => _keterangan;
  int get getOrderPaymentGroup => _orderPaymentGroup;
  int get getOrderPaymentRadio1 => _orderPaymentRadio1;
  int get getOrderPaymentRadio2 => _orderPaymentRadio2;
  int get getOrderPaymentRadio3 => _orderPaymentRadio3;

  set setKeterangan(val) {
    _keterangan = val;
  }

  void setListKeterangan(val) {
    _keterangan['paymentMethod'] = val;
    _listKeterangan.add(_keterangan);
  }

  set setOrderPaymentRadio(val) {
    _orderPaymentGroup = val;
    notifyListeners();
  }
}
