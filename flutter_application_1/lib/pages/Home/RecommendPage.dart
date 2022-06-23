import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Component/homecomponent/EventPageComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/WeightPageComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/judulpage.dart';
import 'package:flutter_application_1/Provider/Home_Provider.dart';
import 'package:flutter_application_1/Component/homecomponent/TimePageComponent.dart';
import 'package:flutter_application_1/Provider/Order_Provider.dart';
import 'package:flutter_application_1/pages/Home/Detail/DetailVisserTime.dart';
import 'package:flutter_application_1/pages/Home/Detail/DetailVisserWeight.dart';
import 'package:flutter_application_1/pages/Payment%20Pages/PaymentMethod.dart';
import 'package:flutter_application_1/pages/Home/Detail/DetailVisserEvent.dart';

import 'package:provider/provider.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({Key? key}) : super(key: key);

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  String hargaEvent = "50000";
  String hargaTime = "70000";
  String hargaWeight = "50000";
  Widget build(BuildContext context) {
    var orderProvider = Provider.of<Order_Provider>(context);
    final datarecoment = Provider.of<Home_Provider>(context);
    return Container(
      child: ListView(
        padding: EdgeInsets.only(top: 0),
        children: [
          carousel(
              items: datarecoment.AmbilCarouselRecommend.map((e) {
            return CarouselList(lokasiGambar: e);
          }).toList()),
          judulpage(judul: "Recommend Visser"),
          Column(
            children: [
              TimePageComponent(
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailVisserTime(
                                  Lokasigambar:
                                      'assets/ImageAssets/pemancingan_7.jpg',
                                  judul: 'Visser Good People',
                                  recommend: 1000,
                                  harga: 70000,
                                  Location: "St. Good 75",
                                  Fasilitas: [
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
                                  press: () {
                                    orderProvider.setKeterangan = {
                                      'orderID':
                                          orderProvider.getOrderList.length + 1,
                                      'namaToko': 'Visser Good People',
                                      'alamatToko': 'St. Good 75',
                                      'totalHarga': hargaTime,
                                      'cartList': "pesan"
                                    };
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                PaymentMethod(
                                                    shipping: "Ticket"))));
                                  },
                                  Rating: 4.0,
                                  comments: [
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
                                      "Isi Commment":
                                          "Nyaman, adem, banyak ikannya",
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
                                      "Isi Commment":
                                          "Harus banget sih datang kemari",
                                      "gambar": [
                                        "assets/ImageAssets/pondok_2.png"
                                      ]
                                    }
                                  ],
                                )));
                  },
                  LokasiGambar: 'assets/ImageAssets/pemancingan_7.jpg',
                  NamaLokasi: 'Visser Good People',
                  JumlahRecomend: 1000,
                  Harga: 70000),
              WeightPageComponent(
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailVisserWeight(
                                lokasigambar:
                                    'assets/ImageAssets/pemancingan_4.jpg',
                                judul: 'Visser Terjun Mount',
                                recommend: 1000,
                                hargaawal: 70000,
                                harga: 50000,
                                Location: "St. Terjun 40",
                                Fasilitas: [
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
                                press: () {
                                  orderProvider.setKeterangan = {
                                    'orderID':
                                        orderProvider.getOrderList.length + 1,
                                    'namaToko': 'Visser Terjun Mount',
                                    'alamatToko': "St. Terjun 40",
                                    'totalHarga': hargaWeight,
                                    'cartList': "pesan"
                                  };
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => PaymentMethod(
                                              shipping: "Ticket"))));
                                },
                                Rating: 5.0,
                                comments: [
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
                                    "Isi Commment":
                                        "Nyaman, adem, banyak ikannya",
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
                                    "Isi Commment":
                                        "Harus banget sih datang kemari",
                                    "gambar": [
                                      "assets/ImageAssets/pondok_2.png"
                                    ]
                                  }
                                ])));
                  },
                  LokasiGambar: 'assets/ImageAssets/pemancingan_4.jpg',
                  NamaLokasi: 'Visser Terjun Mount',
                  JumlahRecomend: 1000,
                  Hargaawal: 70000,
                  Harga: 50000),
              EventPageComponent(
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailVisserEvent(
                                press: () {
                                  orderProvider.setKeterangan = {
                                    'orderID':
                                        orderProvider.getOrderList.length + 1,
                                    'namaToko': 'Visser Damar Raya',
                                    'alamatToko':
                                        "St. Damar Raya.99, Medan Timur",
                                    'totalHarga': hargaEvent,
                                    'cartList': "pesan"
                                  };
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => PaymentMethod(
                                              shipping: "Ticket"))));
                                },
                                Lokasigambar:
                                    'assets/ImageAssets/pemancingan_10.jpg',
                                judul: "Galatama Ikan Mas Dan Ikan Patin",
                                Capacity: 200,
                                isi: 169,
                                Kalender: '19 Maret 2022',
                                waktutanggal: "Saturday, 09:00PM - 15:00PM",
                                lokasikolam: "St. Damar Raya.99, Medan Timur",
                                namakolam: 'Visser Damar Raya',
                                Harga: 50000,
                                Hadiah: "TEN MILLION RUPIAH",
                                Naskah:
                                    "Galatama merupakan aktivitas memancing yang dilakukan pada kolam pemancingan dengan sistem lomba untuk mencari pemenang. Untuk itu Visser Damar Raya ingin mengadakan event GALAMATA dalam rangka ulangtahun kedua. Jadi tunggu apalagi? Ayuk buruan klik tombol di bawah ini.",
                                Recommend: 1000)));
                  },
                  LokasiGambar: 'assets/ImageAssets/pemancingan_10.jpg',
                  NamaLokasi: 'Visser Damar Raya',
                  JumlahRecomend: 1000,
                  Tanggal: '19 Maret 2022',
                  Harga: 50000)
            ],
          )
        ],
      ),
    );
  }
}
