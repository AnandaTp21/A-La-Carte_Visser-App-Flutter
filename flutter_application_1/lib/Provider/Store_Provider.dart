import 'package:flutter/material.dart';

class StoreProvider extends ChangeNotifier {
  final List<String> _storeCarouselList = [
    'assets/carousel.jpg',
    'assets/carousel.jpg',
    'assets/carousel.jpg'
  ];

  final List<Map<String, dynamic>> _storeThumbnailList = [
    {
      'idToko': 1,
      'logotoko': 'assets/logogreen.png',
      'namatoko': 'Visser Store',
      'alamattoko': 'St. Bilal No. 46',
      'jumlahlike': 50,
    },
    {
      'idToko': 2,
      'logotoko': 'assets/logogreen.png',
      'namatoko': 'Visser Store',
      'alamattoko': 'St. Bilal No. 46',
      'jumlahlike': 50,
    },
    {
      'idToko': 3,
      'logotoko': 'assets/logogreen.png',
      'namatoko': 'Visser Store',
      'alamattoko': 'St. Bilal No. 46',
      'jumlahlike': 50,
    },
    {
      'idToko': 4,
      'logotoko': 'assets/logogreen.png',
      'namatoko': 'Visser Store',
      'alamattoko': 'St. Bilal No. 46',
      'jumlahlike': 50,
    },
  ];

  final List<Map<String, dynamic>> _productList = [
    {
      'index': 1,
      'idToko': 1,
      'idProduk': 0001,
      'gambarProduk': 'assets/ImageAssets/fishing_rod.png',
      'namaProduk': 'Joran Pancing',
      'hargaProduk': 25000,
    },
    {
      'index': 2,
      'idToko': 1,
      'idProduk': 0002,
      'gambarProduk': 'assets/ImageAssets/reel.png',
      'namaProduk': 'Spinning Reel',
      'hargaProduk': 25000,
    },
    {
      'index': 3,
      'idToko': 1,
      'idProduk': 0003,
      'gambarProduk': 'assets/ImageAssets/timah.png',
      'namaProduk': 'Timah Pancing',
      'hargaProduk': 25000,
    },
    {
      'index': 4,
      'idToko': 1,
      'idProduk': 0004,
      'gambarProduk': 'assets/ImageAssets/pelampung.png',
      'namaProduk': 'Pelampung',
      'hargaProduk': 15000,
    }
  ];

  List<Map<String, dynamic>> _cartList = [];
  int _totalHarga = 0;
  int _tempTextField = 0;

  Map<String, String> _alamat = {};
  String _shippingRadio1 = "delivery";
  String _shippingRadio2 = "pickup";
  String _shippingRadioGroup = "";

  Map get getAlamat => _alamat;
  String get getShippingRadio1 => _shippingRadio1;
  String get getShippingRadio2 => _shippingRadio2;
  String get getShippingRadioGroup => _shippingRadioGroup;
  List get getStoreThumbnailList => _storeThumbnailList;
  List get getStoreCarouselList => _storeCarouselList;
  List get getProductList => _productList;
  List get getCartList => _cartList;
  int get getTempTextField => _tempTextField;
  int get getTotalHarga => _totalHarga;

  set setAlamat(val) {
    _alamat = val;
    notifyListeners();
  }

  set setShippingRadio(val) {
    _shippingRadioGroup = val;
    notifyListeners();
  }

  set setTempTextField(val) {
    _tempTextField = val;
    notifyListeners();
  }

  set setCartList(list) {
    int x = -1;
    for (var i = 0; i < _cartList.length; i++) {
      if (list['idProduk'] == _cartList[i]['idProduk']) {
        x = i;
      }
    }
    if (x < 0) {
      _cartList.add({
        'idProduk': list['idProduk'],
        'gambarProduk': list['gambarProduk'],
        'namaProduk': list['namaProduk'],
        'hargaProduk': list['hargaProduk'],
        'jumlahProduk': list['jumlahProduk']
      });
    } else {
      _cartList[x]['jumlahProduk'] += list['jumlahProduk'];
    }
    FuncTotalHarga();
    notifyListeners();
  }

  set setKurangProduk(idProduk) {
    for (var i = 0; i < _cartList.length; i++) {
      if (idProduk == _cartList[i]['idProduk']) {
        _cartList[i]['jumlahProduk'] -= 1;
        if (_cartList[i]['jumlahProduk'] < 1) {
          _cartList.removeAt(i);
        }
      }
    }
    FuncTotalHarga();
    notifyListeners();
  }

  set setTambahProduk(idProduk) {
    for (var i = 0; i < _cartList.length; i++) {
      if (idProduk == _cartList[i]['idProduk']) {
        _cartList[i]['jumlahProduk'] += 1;
        FuncTotalHarga();
      }
    }
    notifyListeners();
  }

  set setTextField(idProduk) {
    for (var i = 0; i < _cartList.length; i++) {
      if (idProduk == _cartList[i]['idProduk']) {
        _cartList[i]['jumlahProduk'] = _tempTextField;
      }
    }
    FuncTotalHarga();
    notifyListeners();
  }

  set setDissmissible(idProduk) {
    for (var i = 0; i < _cartList.length; i++) {
      if (idProduk == _cartList[i]['idProduk']) {
        _cartList.removeAt(i);
      }
    }
    FuncTotalHarga();
    notifyListeners();
  }

  FuncTotalHarga() {
    _totalHarga = 0;
    int x = 0;
    for (var i = 0; i < _cartList.length; i++) {
      x = _cartList[i]['hargaProduk'] * _cartList[i]['jumlahProduk'];
      _totalHarga += x;
    }
  }

  void OrderComplete() {
    _cartList.clear();
    _totalHarga = 0;
    notifyListeners();
  }
}
