
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
    {'lokasigambar' : 'assets/4005909.jpg','NamaLokasi' : 'Visser Terjun Mount','Jumlahrecomend' : 1000,'harga' : 50000,'hargaawal' : 70000,'Location' : "St.Damar Raya",
    'fasilitas' : [{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'}],
    "Rating" :4.0,
    "Comment" : [{"nama" : "Geiginia Mill","Nilai" : "5,0","tanggal" : "18 Feb 2022", "Isi Commment" : "Tempat yang sangat bagus,nyaman dan sangat bagus sekali untuk di kunjungi di kemudian hari"}]},
    ];
  final List _DataTime = [
    {'lokasigambar' : 'assets/4005909.jpg','NamaLokasi' : 'Visser Terjun Mounth','Jumlahrecomend' : 1000,'harga' : 50000,'Location' : "St.Damar Raya",
    'fasilitas' : [{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'},{"Icon" : Icons.abc,'judulfasilitas' : 'Patin / Lele','keterangan' : 'Type of fish'}],
    "Rating" :4.0,
    "Comment" : [{"nama" : "Geiginia Mill","Nilai" : "5,0","tanggal" : "18 Feb 2022", "Isi Commment" : "Tempat yang sangat bagus,nyaman dan sangat bagus sekali untuk di kunjungi di kemudian hari"}]},
    ];
  final List _DataEvent = [
    {'lokasigambar' : 'assets/4005909.jpg','NamaLokasi' : 'Visser Terjun Mounth','Jumlahrecomend' : 1000,'harga' : 50000,'tanggal' : '15 Maret 2022',"judul" : "Galatama Ikan Mas Dan Ikan Patin", "Alamat" : "Jl Thamrin no 52","Hadiah" : "1.000.000","naskah" : "b;lsadoiasjdoaisdjaso", "isi" : 199,"capacity" : 200,"HariTanggal" : "Saturday, 23 April 2022"},
  ];

  
   List get AmbilDataWeight => _DataWeight;
   List get AmbilDataTime => _DataTime;
   List get AmbilDataEvent => _DataEvent;
   List get AmbilCarouselWeight => _CarouselWeight;
   List get AmbilCarouselTime => _CarouselTime;
   List get AmbilCarouselEvent => _CarouselEvent;
   List get AmbilCarouselRecommend => _CarouselRecommend;

}