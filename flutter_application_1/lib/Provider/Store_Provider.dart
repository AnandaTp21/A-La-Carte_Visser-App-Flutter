import 'package:flutter/material.dart';

class StoreProvider extends ChangeNotifier {
  final List<String> _storeCarouselList = [
    'assets/carousel.jpg',
    'assets/carousel.jpg',
    'assets/carousel.jpg'
  ];
  List _opendetail = [
    {
      "idToko": "",
      "namaToko": "",
      "lokasiToko": "",
      "gambarToko": "",
      "rating": "",
      "waktuBuka": "",
      "waktuTutup": "",
      "coment": []
    }
  ];
  List get opendetail => _opendetail;
  void opendetailfuns(
    String namatoko,
    String lokasitoko,
    String gambartoko,
    double rating,
    String waktubuka,
    String waktututup,
    int idToko,
    List comment,
  ) {
    _opendetail[0] = {
      "idToko": idToko,
      "namaToko": namatoko,
      "lokasiToko": lokasitoko,
      "gambarToko": gambartoko,
      "rating": rating,
      "waktuBuka": waktubuka,
      "waktuTutup": waktututup,
      "coment": comment
    };
    notifyListeners();
  }

  final List<Map<String, dynamic>> _storeThumbnailList = [
    {
      'idToko': 1,
      'logotoko': 'assets/ImageAssets/toko_1.png',
      'namatoko': 'Pratama Vis',
      'alamattoko': 'St. Pratama - 11',
      'jumlahlike': 99,
      'waktuBuka': "09.00",
      'waktuTutup': "18.00",
      'rating': 5.0,
      "comment": [
        {
          "nama": "Ashley Joerch",
          "Nilai": "5.0",
          "tanggal": "05 Feb 2022",
          "Isi Commment":
              "Alat pancing sangat kokoh, penjual sangat ramah, recommend",
          "gambar": [
            "assets/ImageAssets/joran-1.png",
            "assets/ImageAssets/joran 2.png",
            "assets/ImageAssets/joran 3.webp",
          ],
        },
        {
          "nama": "Josh Raymond",
          "Nilai": "5.0",
          "tanggal": "27 Jan 2022",
          "Isi Commment": "Highly Recommend",
          "gambar": [],
        },
        {
          "nama": "Tyas Mutia",
          "Nilai": "4.0",
          "tanggal": "05 Jan 2022",
          "Isi Commment": "Sangat bagus barangnya",
          "gambar": [],
        }
      ]
    },
    {
      'idToko': 2,
      'logotoko': 'assets/ImageAssets/toko_2.png',
      'namatoko': 'Nyageg Store',
      'alamattoko': 'St. Nyageg - 26',
      'jumlahlike': 50,
      'waktuBuka': "10.00",
      'waktuTutup': "17.00",
      'rating': 4.0,
      "comment": [
        {
          "nama": "Ashley Joerch",
          "Nilai": "4.0",
          "tanggal": "05 Feb 2022",
          "Isi Commment":
              "Alat pancing sangat kokoh, penjual sangat ramah, recommend",
          "gambar": [
            "assets/ImageAssets/joran-1.png",
            "assets/ImageAssets/joran 2.png",
            "assets/ImageAssets/joran 3.webp",
          ],
        },
        {
          "nama": "Josh Raymond",
          "Nilai": "4.0",
          "tanggal": "27 Jan 2022",
          "Isi Commment": "Saya suka",
          "gambar": [],
        },
        {
          "nama": "Tyas Mutia",
          "Nilai": "4.0",
          "tanggal": "05 Jan 2022",
          "Isi Commment": "Sangat bagus barangnya",
          "gambar": [],
        }
      ]
    },
    {
      'idToko': 3,
      'logotoko': 'assets/ImageAssets/toko_3.png',
      'namatoko': 'Lubuog Mani',
      'alamattoko': 'St. Lubuog - 33',
      'jumlahlike': 35,
      'waktuBuka': "08.00",
      'waktuTutup': "14.00",
      'rating': 4.0,
      "comment": [
        {
          "nama": "Ashley Joerch",
          "Nilai": "4.0",
          "tanggal": "05 Feb 2022",
          "Isi Commment":
              "Alat pancing sangat kokoh, penjual sangat ramah, recommend",
          "gambar": [
            "assets/ImageAssets/joran-1.png",
            "assets/ImageAssets/joran 2.png",
            "assets/ImageAssets/joran 3.webp",
          ],
        },
        {
          "nama": "Josh Raymond",
          "Nilai": "4.0",
          "tanggal": "27 Jan 2022",
          "Isi Commment": "Saya suka",
          "gambar": [],
        },
        {
          "nama": "Tyas Mutia",
          "Nilai": "4.0",
          "tanggal": "05 Jan 2022",
          "Isi Commment": "Sangat bagus barangnya",
          "gambar": [],
        }
      ]
    },
    {
      'idToko': 4,
      'logotoko': 'assets/ImageAssets/toko_4.png',
      'namatoko': 'Mancing Vis',
      'alamattoko': 'St. Mancing - 46',
      'jumlahlike': 70,
      'waktuBuka': "09.00",
      'waktuTutup': "17.30",
      'rating': 4.0,
      "comment": [
        {
          "nama": "Ashley Joerch",
          "Nilai": "4.0",
          "tanggal": "05 Feb 2022",
          "Isi Commment":
              "Alat pancing sangat kokoh, penjual sangat ramah, recommend",
          "gambar": [
            "assets/ImageAssets/joran-1.png",
            "assets/ImageAssets/joran 2.png",
            "assets/ImageAssets/joran 3.webp",
          ],
        },
        {
          "nama": "Josh Raymond",
          "Nilai": "4.0",
          "tanggal": "27 Jan 2022",
          "Isi Commment": "Saya suka",
          "gambar": [],
        },
        {
          "nama": "Tyas Mutia",
          "Nilai": "4.0",
          "tanggal": "05 Jan 2022",
          "Isi Commment": "Sangat bagus barangnya",
          "gambar": [],
        }
      ]
    },
    {
      'idToko': 5,
      'logotoko': 'assets/ImageAssets/toko_5.png',
      'namatoko': 'Irexz Store',
      'alamattoko': 'St. Irray - 04',
      'jumlahlike': 30,
      'waktuBuka': "09.00",
      'waktuTutup': "15.00",
      'rating': 4.0,
      "comment": [
        {
          "nama": "Ashley Joerch",
          "Nilai": "4.0",
          "tanggal": "05 Feb 2022",
          "Isi Commment":
              "Alat pancing sangat kokoh, penjual sangat ramah, recommend",
          "gambar": [
            "assets/ImageAssets/joran-1.png",
            "assets/ImageAssets/joran 2.png",
            "assets/ImageAssets/joran 3.webp",
          ],
        },
        {
          "nama": "Josh Raymond",
          "Nilai": "4.0",
          "tanggal": "27 Jan 2022",
          "Isi Commment": "Saya suka",
          "gambar": [],
        },
        {
          "nama": "Tyas Mutia",
          "Nilai": "4.0",
          "tanggal": "05 Jan 2022",
          "Isi Commment": "Sangat bagus barangnya",
          "gambar": [],
        },
        {
          "nama": "Tyas Mutia",
          "Nilai": "5.0",
          "tanggal": "02 Jan 2022",
          "Isi Commment": "Tidak menyesal membeli barang dari toko ini",
          "gambar": [],
        }
      ]
    },
    {
      'idToko': 6,
      'logotoko': 'assets/ImageAssets/toko_6.png',
      'namatoko': 'Untung Store',
      'alamattoko': 'St. Untung - 10',
      'jumlahlike': 45,
      'waktuBuka': "10.00",
      'waktuTutup': "16.30",
      'rating': 4.0,
      "comment": [
        {
          "nama": "Ashley Joerch",
          "Nilai": "4.0",
          "tanggal": "05 Feb 2022",
          "Isi Commment":
              "Alat pancing sangat kokoh, penjual sangat ramah, recommend",
          "gambar": [
            "assets/ImageAssets/joran-1.png",
            "assets/ImageAssets/joran 2.png",
            "assets/ImageAssets/joran 3.webp",
          ],
        },
        {
          "nama": "Josh Raymond",
          "Nilai": "4.0",
          "tanggal": "27 Jan 2022",
          "Isi Commment": "Saya suka",
          "gambar": [],
        },
        {
          "nama": "Tyas Mutia",
          "Nilai": "4.0",
          "tanggal": "05 Jan 2022",
          "Isi Commment": "Sangat bagus barangnya",
          "gambar": [],
        }
      ]
    },
    {
      'idToko': 7,
      'logotoko': 'assets/ImageAssets/toko_7.png',
      'namatoko': 'Warung Store',
      'alamattoko': 'St. Pancing - 70',
      'jumlahlike': 60,
      'waktuBuka': "09.00",
      'waktuTutup': "17.00",
      'rating': 4.0,
      "comment": [
        {
          "nama": "Ashley Joerch",
          "Nilai": "4.0",
          "tanggal": "05 Feb 2022",
          "Isi Commment":
              "Alat pancing sangat kokoh, penjual sangat ramah, recommend",
          "gambar": [
            "assets/ImageAssets/joran-1.png",
            "assets/ImageAssets/joran 2.png",
            "assets/ImageAssets/joran 3.webp",
          ],
        },
        {
          "nama": "Josh Raymond",
          "Nilai": "4.0",
          "tanggal": "27 Jan 2022",
          "Isi Commment": "Saya suka",
          "gambar": [],
        },
        {
          "nama": "Tyas Mutia",
          "Nilai": "4.0",
          "tanggal": "05 Jan 2022",
          "Isi Commment": "Sangat bagus barangnya",
          "gambar": [],
        }
      ]
    },
    {
      'idToko': 8,
      'logotoko': 'assets/ImageAssets/toko_8.png',
      'namatoko': 'Ghavin Store',
      'alamattoko': 'St. Ghavin - 88',
      'jumlahlike': 80,
      'waktuBuka': "08.00",
      'waktuTutup': "16.00",
      'rating': 4.0,
      "comment": [
        {
          "nama": "Ashley Joerch",
          "Nilai": "4.0",
          "tanggal": "05 Feb 2022",
          "Isi Commment":
              "Alat pancing sangat kokoh, penjual sangat ramah, recommend",
          "gambar": [
            "assets/ImageAssets/joran-1.png",
            "assets/ImageAssets/joran 2.png",
            "assets/ImageAssets/joran 3.webp",
          ],
        },
        {
          "nama": "Josh Raymond",
          "Nilai": "4.0",
          "tanggal": "27 Jan 2022",
          "Isi Commment": "Saya suka",
          "gambar": [],
        },
        {
          "nama": "Tyas Mutia",
          "Nilai": "4.0",
          "tanggal": "05 Jan 2022",
          "Isi Commment": "Sangat bagus barangnya",
          "gambar": [],
        }
      ]
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
        'idToko': list['idToko'],
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
