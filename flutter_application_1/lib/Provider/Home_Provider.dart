import 'package:flutter/material.dart';

class Home_Provider extends ChangeNotifier {
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
    {
      'lokasigambar': 'assets/4005909.jpg',
      'NamaLokasi': 'Visser Terjun Mount',
      'Jumlahrecomend': 1000,
      'harga': 50000,
      'hargaawal': 70000,
      'Location': "St.Damar Raya",
      'fasilitas': [
        {
          "Icon": Icons.panorama_fisheye,
          'judulfasilitas': 'Bawal/Kakap',
          'keterangan': 'Type of fish'
        },
        {
          "Icon": Icons.outdoor_grill,
          'judulfasilitas': 'Grill On Site',
          'keterangan': 'Facility'
        },
        {
          "Icon": Icons.wifi,
          'judulfasilitas': 'Free Wifi',
          'keterangan': 'Facility'
        },
        {
          "Icon": Icons.food_bank_outlined,
          'judulfasilitas': 'Order Food Easily',
          'keterangan': 'Facility'
        }
      ],
      "Rating": 4.0,
      "Comment": [
        {
          "nama": "Geiginia Mill",
          "Nilai": "5.0",
          "tanggal": "18 Feb 2022",
          "Isi Commment":
              "Worth it untuk datang kembali, sangat nyaman, dan adem",
          "gambar": [
            "assets/ImageAssets/pondok_1.png",
            "assets/ImageAssets/pondok_2.png",
            "assets/ImageAssets/pondok_3.png"
          ]
        },
        {
          "nama": "Rodney Miller",
          "Nilai": "4.0",
          "tanggal": "10 Feb 2022",
          "Isi Commment": "Nyaman, adem, banyak ikannya",
          "gambar": []
        },
        {
          "nama": "Richard Haill",
          "Nilai": "5.0",
          "tanggal": "30 Jan 2022",
          "Isi Commment": "Sangat suka",
          "gambar": []
        },
        {
          "nama": "Susie Bridges",
          "Nilai": "5.0",
          "tanggal": "30 Jan 2022",
          "Isi Commment": "Harus banget sih datang kemari",
          "gambar": ["assets/ImageAssets/pondok_2.png"]
        }
      ]
    },
  ];
  final List _DataTime = [
    {
      'lokasigambar': 'assets/4005909.jpg',
      'NamaLokasi': 'Visser Terjun Mounth',
      'Jumlahrecomend': 1000,
      'harga': 50000,
      'Location': "St.Damar Raya",
      'fasilitas': [
        {
          "Icon": Icons.panorama_fisheye,
          'judulfasilitas': 'Bawal/Kakap',
          'keterangan': 'Type of fish'
        },
        {
          "Icon": Icons.outdoor_grill,
          'judulfasilitas': 'Grill On Site',
          'keterangan': 'Facility'
        },
        {
          "Icon": Icons.wifi,
          'judulfasilitas': 'Free Wifi',
          'keterangan': 'Facility'
        },
        {
          "Icon": Icons.food_bank_outlined,
          'judulfasilitas': 'Order Food Easily',
          'keterangan': 'Facility'
        }
      ],
      "Rating": 4.0,
      "Comment": [
        {
          "nama": "Geiginia Mill",
          "Nilai": "5.0",
          "tanggal": "18 Feb 2022",
          "Isi Commment":
              "Worth it untuk datang kembali, sangat nyaman, dan adem",
          "gambar": [
            "assets/ImageAssets/pondok_1.png",
            "assets/ImageAssets/pondok_2.png",
            "assets/ImageAssets/pondok_3.png"
          ]
        },
        {
          "nama": "Rodney Miller",
          "Nilai": "4.0",
          "tanggal": "10 Feb 2022",
          "Isi Commment": "Nyaman, adem, banyak ikannya",
          "gambar": []
        },
        {
          "nama": "Richard Haill",
          "Nilai": "5.0",
          "tanggal": "30 Jan 2022",
          "Isi Commment": "Sangat suka",
          "gambar": []
        },
        {
          "nama": "Susie Bridges",
          "Nilai": "5.0",
          "tanggal": "30 Jan 2022",
          "Isi Commment": "Harus banget sih datang kemari",
          "gambar": ["assets/ImageAssets/pondok_2.png"]
        }
      ]
    },
  ];
  final List _DataEvent = [
    {
      'lokasigambar': 'assets/4005909.jpg',
      'NamaLokasi': 'Visser Damar Raya',
      'Jumlahrecomend': 1000,
      'harga': 50000,
      'tanggal': '12 Maret 2022',
      "judul": "Galatama Ikan Mas Dan Ikan Patin",
      "Alamat": "St. Damar Raya.99, Medan Timur",
      "Hadiah": "TEN MILLION RUPIAH",
      "naskah":
          "Galatama merupakan aktivitas memancing yang dilakukan pada kolam pemancingan dengan sistem lomba untuk mencari pemenang. Untuk itu Visser Damar Raya ingin mengadakan event GALAMATA dalam rangka ulangtahun kedua. Jadi tunggu apalagi? Ayuk buruan klik tombol di bawah ini.",
      "isi": 169,
      "capacity": 200,
      "HariTanggal": "Saturday, 09:00PM - 15:00PM"
    },
  ];

  List get AmbilDataWeight => _DataWeight;
  List get AmbilDataTime => _DataTime;
  List get AmbilDataEvent => _DataEvent;
  List get AmbilCarouselWeight => _CarouselWeight;
  List get AmbilCarouselTime => _CarouselTime;
  List get AmbilCarouselEvent => _CarouselEvent;
  List get AmbilCarouselRecommend => _CarouselRecommend;
}
