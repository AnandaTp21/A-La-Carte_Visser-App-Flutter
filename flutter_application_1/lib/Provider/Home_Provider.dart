import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Provider extends ChangeNotifier{
  final List _CarouselRecommend = [
    "assets/carousel.jpg",
    "assets/carousel.jpg",
    "assets/carousel.jpg",
    ];
  final List _CarouselWeight = [
    "assets/carousel.jpg",
    "assets/carousel.jpg",
    "assets/carousel.jpg",
    ];
  final List _CarouselTime = [
    "assets/carousel.jpg",
    "assets/carousel.jpg",
    "assets/carousel.jpg",
    ];
  final List _CarouselEvent = [
    "assets/carousel.jpg",
    "assets/carousel.jpg",
    "assets/carousel.jpg",
    ];
  final List _DataWeight = [
    {'lokasigambar' : 'assets/logogreen.png','NamaLokasi' : 'Visser Terjun Mount','Jumlahrecomend' : 1000,'harga' : 50000,'hargaawal' : 70000,'Location' : "St.Damar Raya",'fasilitas' : [{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'}]},
    ];
  final List _DataTime = [
    {'lokasigambar' : 'assets/logogreen.png','NamaLokasi' : 'Visser Terjun Mounth','Jumlahrecomend' : 1000,'harga' : 50000,'Location' : "St.Damar Raya",'fasilitas' : [{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'}]},
    ];
  final List _DataEvent = [
    {'lokasigambar' : 'assets/logogreen.png','NamaLokasi' : 'Visser Terjun Mounth','Jumlahrecomend' : 1000,'harga' : 50000,'tanggal' : '15 Maret 2022'},
    {'lokasigambar' : 'assets/logogreen.png','NamaLokasi' : 'Visser Terjun Mounth','Jumlahrecomend' : 1000,'harga' : 50000,'tanggal' : '15 Maret 2022'}
    ];
   List get AmbilDataWeight => _DataWeight;
   List get AmbilDataTime => _DataTime;
   List get AmbilDataEvent => _DataEvent;
   List get AmbilCarouselWeight => _CarouselWeight;
   List get AmbilCarouselTime => _CarouselTime;
   List get AmbilCarouselEvent => _CarouselEvent;
   List get AmbilCarouselRecommend => _CarouselRecommend;

}