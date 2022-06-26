import 'package:flutter/material.dart';

class Home_Provider extends ChangeNotifier {
  final List _CarouselRecommend = [
    "assets/ImageAssets/pemancingan_1.jpg",
    "assets/ImageAssets/pemancingan_2.jpg",
    "assets/ImageAssets/pemancingan_3.jpg"
  ];
  final List _CarouselWeight = [
    "assets/ImageAssets/pemancingan_4.jpg",
    "assets/ImageAssets/pemancingan_5.jpg",
    "assets/ImageAssets/pemancingan_6.jpg"
  ];
  final List _CarouselTime = [
    "assets/ImageAssets/pemancingan_7.jpg",
    "assets/ImageAssets/pemancingan_8.jpeg",
    "assets/ImageAssets/pemancingan_9.jpg"
  ];
  final List _CarouselEvent = [
    "assets/ImageAssets/pemancingan_10.jpg",
    "assets/ImageAssets/pemancingan_11.jpg",
    "assets/ImageAssets/pemancingan_12.jpg"
  ];
  final List _DataWeight = [
    {
      'lokasigambar': 'assets/ImageAssets/pemancingan_4.jpg',
      'NamaLokasi': 'Visser Terjun Mount',
      'Jumlahrecomend': 1000,
      'harga': 50000,
      'hargaawal': 70000,
      'Location': "St. Terjun 40",
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
      "Rating": 5.0,
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
    {
      'lokasigambar': 'assets/ImageAssets/pemancingan_5.jpg',
      'NamaLokasi': 'Visser Everest Water',
      'Jumlahrecomend': 1000,
      'harga': 70000,
      'hargaawal': 100000,
      'Location': "St. Everest 100",
      'fasilitas': [
        {
          "Icon": Icons.panorama_fisheye,
          'judulfasilitas': 'Lele/Patin',
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
        }
      ],
      "Rating": 4.0,
      "Comment": [
        {
          "nama": "Yuan Ruth",
          "Nilai": "4.0",
          "tanggal": "25 Feb 2022",
          "Isi Commment": "Keren, Adem, Sangat Ramai Jadi Agak Sesak",
          "gambar": [
            "assets/ImageAssets/pondok_3.png",
            "assets/ImageAssets/pondok_1.png",
            "assets/ImageAssets/pondok_2.png"
          ]
        },
        {
          "nama": "Effendy Joan",
          "Nilai": "4.0",
          "tanggal": "05 Feb 2022",
          "Isi Commment": "Ikan Besar",
          "gambar": []
        },
        {
          "nama": "Rayhan Kay",
          "Nilai": "4.0",
          "tanggal": "15 Jan 2022",
          "Isi Commment": ".........",
          "gambar": []
        },
        {
          "nama": "Susie Bridges",
          "Nilai": "5.0",
          "tanggal": "5 Jan 2022",
          "Isi Commment": "Sangat Recommend",
          "gambar": [
            "assets/ImageAssets/pondok_3.png",
            "assets/ImageAssets/pondok_1.png"
          ]
        }
      ]
    },
    {
      'lokasigambar': 'assets/ImageAssets/pemancingan_6.jpg',
      'NamaLokasi': 'Visser Indiana Water',
      'Jumlahrecomend': 500,
      'harga': 40000,
      'hargaawal': 70000,
      'Location': "St. Indiana 47",
      'fasilitas': [
        {
          "Icon": Icons.panorama_fisheye,
          'judulfasilitas': 'Patin/Bawal',
          'keterangan': 'Type of fish'
        },
        {
          "Icon": Icons.outdoor_grill,
          'judulfasilitas': 'Grill On Site',
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
          "nama": "Yuan Ruth",
          "Nilai": "4.0",
          "tanggal": "25 Feb 2022",
          "Isi Commment": "Keren, Adem, Sangat Ramai Jadi Agak Sesak",
          "gambar": [
            "assets/ImageAssets/pondok_3.png",
            "assets/ImageAssets/pondok_1.png",
            "assets/ImageAssets/pondok_2.png"
          ]
        },
        {
          "nama": "Effendy Joan",
          "Nilai": "4.0",
          "tanggal": "05 Feb 2022",
          "Isi Commment": "Ikan Besar",
          "gambar": []
        },
        {
          "nama": "Rayhan Kay",
          "Nilai": "4.0",
          "tanggal": "15 Jan 2022",
          "Isi Commment": ".........",
          "gambar": []
        },
        {
          "nama": "Susie Bridges",
          "Nilai": "5.0",
          "tanggal": "5 Jan 2022",
          "Isi Commment": "Sangat Recommend",
          "gambar": [
            "assets/ImageAssets/pondok_3.png",
            "assets/ImageAssets/pondok_1.png"
          ]
        }
      ]
    },
  ];
  final List _DataTime = [
    {
      'lokasigambar': 'assets/ImageAssets/pemancingan_7.jpg',
      'NamaLokasi': 'Visser Good People',
      'Jumlahrecomend': 1000,
      'harga': 70000,
      'Location': "St. Good 75",
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
    {
      'lokasigambar': 'assets/ImageAssets/pemancingan_9.jpg',
      'NamaLokasi': 'Visser Cecilia',
      'Jumlahrecomend': 800,
      'harga': 45000,
      'hargaawal': 60000,
      'Location': "St. Cecilia 69",
      'fasilitas': [
        {
          "Icon": Icons.panorama_fisheye,
          'judulfasilitas': 'Mas/Nila',
          'keterangan': 'Type of fish'
        },
        {
          "Icon": Icons.outdoor_grill,
          'judulfasilitas': 'Grill On Site',
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
          "nama": "Yuan Ruth",
          "Nilai": "4.0",
          "tanggal": "25 Feb 2022",
          "Isi Commment": "Keren, Adem, Sangat Ramai Jadi Agak Sesak",
          "gambar": [
            "assets/ImageAssets/pondok_3.png",
            "assets/ImageAssets/pondok_1.png",
            "assets/ImageAssets/pondok_2.png"
          ]
        },
        {
          "nama": "Effendy Joan",
          "Nilai": "4.0",
          "tanggal": "05 Feb 2022",
          "Isi Commment": "Ikan Besar",
          "gambar": []
        },
        {
          "nama": "Rayhan Kay",
          "Nilai": "4.0",
          "tanggal": "15 Jan 2022",
          "Isi Commment": ".........",
          "gambar": []
        },
        {
          "nama": "Susie Bridges",
          "Nilai": "5.0",
          "tanggal": "5 Jan 2022",
          "Isi Commment": "Sangat Recommend",
          "gambar": [
            "assets/ImageAssets/pondok_3.png",
            "assets/ImageAssets/pondok_1.png"
          ]
        }
      ]
    },
    {
      'lokasigambar': 'assets/ImageAssets/pemancingan_8.jpeg',
      'NamaLokasi': 'Visser Joji Water',
      'Jumlahrecomend': 100,
      'harga': 30000,
      'hargaawal': 40000,
      'Location': "St. Joji 56",
      'fasilitas': [
        {
          "Icon": Icons.panorama_fisheye,
          'judulfasilitas': 'Lele/Nila',
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
        }
      ],
      "Rating": 4.0,
      "Comment": [
        {
          "nama": "Yuan Ruth",
          "Nilai": "4.0",
          "tanggal": "25 Feb 2022",
          "Isi Commment": "Keren, Adem, Sangat Ramai Jadi Agak Sesak",
          "gambar": [
            "assets/ImageAssets/pondok_3.png",
            "assets/ImageAssets/pondok_1.png",
            "assets/ImageAssets/pondok_2.png"
          ]
        },
        {
          "nama": "Effendy Joan",
          "Nilai": "4.0",
          "tanggal": "05 Feb 2022",
          "Isi Commment": "Ikan Besar",
          "gambar": []
        },
        {
          "nama": "Rayhan Kay",
          "Nilai": "4.0",
          "tanggal": "15 Jan 2022",
          "Isi Commment": ".........",
          "gambar": []
        },
        {
          "nama": "Susie Bridges",
          "Nilai": "5.0",
          "tanggal": "5 Jan 2022",
          "Isi Commment": "Sangat Recommend",
          "gambar": [
            "assets/ImageAssets/pondok_3.png",
            "assets/ImageAssets/pondok_1.png"
          ]
        }
      ]
    },
  ];
  final List _DataEvent = [
    {
      'lokasigambar': 'assets/ImageAssets/pemancingan_10.jpg',
      'NamaLokasi': 'Visser Damar Raya',
      'Jumlahrecomend': 1000,
      'harga': 50000,
      'tanggal': '19 Maret 2022',
      "judul": "Galatama Ikan Mas Dan Ikan Patin",
      "Alamat": "St. Damar Raya.99",
      "Hadiah": "TEN MILLION RUPIAH",
      "naskah":
          "Galatama merupakan aktivitas memancing yang dilakukan pada kolam pemancingan dengan sistem lomba untuk mencari pemenang. Untuk itu Visser Damar Raya ingin mengadakan event GALAMATA dalam rangka ulangtahun kedua. Jadi tunggu apalagi? Ayuk buruan klik tombol di bawah ini.",
      "isi": 169,
      "capacity": 200,
      "HariTanggal": "Saturday, 09:00PM - 15:00PM"
    },
    {
      'lokasigambar': 'assets/ImageAssets/pemancingan_11.jpg',
      'NamaLokasi': 'Visser Guardian Angel',
      'Jumlahrecomend': 2000,
      'harga': 85000,
      'tanggal': '12 Maret 2022',
      "judul": "Galatama Ikan Bawal dan Ikan Kakap",
      "Alamat": "St. Guardian 75, Medan Selatan",
      "Hadiah": "FIFTEEN MILLION RUPIAH",
      "naskah":
          "Galatama adalah event yang sering dilakukan oleh Visser Guardian Angel dan tidak diragukan lagi, so tunggu apalagi? Kuy ah daftar!",
      "isi": 98,
      "capacity": 100,
      "HariTanggal": "Saturday, 10:00PM - 14:00PM"
    },
    {
      'lokasigambar': 'assets/ImageAssets/pemancingan_12.jpg',
      'NamaLokasi': 'Visser Tulus Water',
      'Jumlahrecomend': 1500,
      'harga': 70000,
      'tanggal': '05 Maret 2022',
      "judul": "Galatama Ikan Mas dan Ikan Nila",
      "Alamat": "St. Tulus 19, Medan Barat",
      "Hadiah": "ONE MILLION RUPIAH",
      "naskah":
          "Galatama sudah hadir kembali. Buruan daftar sebelum kehabisan tiket!",
      "isi": 45,
      "capacity": 50,
      "HariTanggal": "Saturday, 10:00PM - 13:00PM"
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
