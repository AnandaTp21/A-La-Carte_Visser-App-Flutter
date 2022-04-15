import 'package:flutter/material.dart';

class StoreProvider extends ChangeNotifier {
  final List<String> _storeCarouselList = [
    'assets/carousel.jpg',
    'assets/carousel.jpg',
    'assets/carousel.jpg'
  ];

  final List<Map<String, String>> _storeThumbnailList = [
    {
      'logotoko': 'assets/logogreen.png',
      'namatoko': 'Visser Store',
      'alamattoko': 'St. Bilal No. 46',
      'jumlahlike': '50',
    },
    {
      'logotoko': 'assets/logogreen.png',
      'namatoko': 'Visser Store',
      'alamattoko': 'St. Bilal No. 46',
      'jumlahlike': '50',
    },
    {
      'logotoko': 'assets/logogreen.png',
      'namatoko': 'Visser Store',
      'alamattoko': 'St. Bilal No. 46',
      'jumlahlike': '50',
    },
    {
      'logotoko': 'assets/logogreen.png',
      'namatoko': 'Visser Store',
      'alamattoko': 'St. Bilal No. 46',
      'jumlahlike': '50',
    },
  ];

  final List<Map<String, String>> _sdProductList = [
    {
      'index' : '1',
      'gambarProduk': 'assets/ImageAssets/fishing_rod.png',
      'namaProduk': 'Joran Pancing',
      'hargaProduk': '350000',
    },
    {
      'index' : '2',
      'gambarProduk': 'assets/ImageAssets/reel.png',
      'namaProduk': 'Spinning Reel',
      'hargaProduk': '200000',
    },
    {
      'index' : '3',
      'gambarProduk': 'assets/ImageAssets/timah.png',
      'namaProduk': 'Timah Pancing',
      'hargaProduk': '25000',
    },
    {
      'index' : '4',
      'gambarProduk': 'assets/ImageAssets/pelampung.png',
      'namaProduk': 'Pelampung',
      'hargaProduk': '15000',
    }
  ];

  List get getStoreThumbnailList => _storeThumbnailList;
  List get getStoreCarouselList => _storeCarouselList;
  List get getSdProductList => _sdProductList;
}
