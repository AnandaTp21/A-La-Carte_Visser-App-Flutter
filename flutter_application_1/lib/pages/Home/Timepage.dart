import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Component/homecomponent/TimePageComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/judulpage.dart';
import 'package:flutter_application_1/Provider/Home_Provider.dart';
import 'package:flutter_application_1/Provider/Order_Provider.dart';
import 'package:flutter_application_1/pages/Home/Detail/DetailVisserTime.dart';
import 'package:flutter_application_1/pages/Payment%20Pages/PaymentMethod.dart';
import 'package:provider/provider.dart';

class TimePage extends StatefulWidget {
  const TimePage({Key? key}) : super(key: key);

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  @override
  Widget build(BuildContext context) {
    final datatime = Provider.of<Home_Provider>(context);
    var orderProvider = Provider.of<Order_Provider>(context);
    return Container(
      decoration: BoxDecoration(color: Color.fromRGBO(231, 223, 212, 1)),
      child: ListView(
        padding: EdgeInsets.only(top: 0),
        children: [
          carousel(
              items: datatime.AmbilCarouselTime.map((e) {
            return CarouselList(lokasiGambar: e);
          }).toList()),
          judulpage(
            judul: "Time Visser",
          ),
          Column(
              children: datatime.AmbilDataTime.map((val) {
            return TimePageComponent(
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailVisserTime(
                                Lokasigambar: val['lokasigambar'],
                                judul: val['NamaLokasi'],
                                recommend: val['Jumlahrecomend'],
                                harga: val['harga'],
                                Location: val['Location'],
                                Fasilitas: val['fasilitas'],
                                press: () {
                                  orderProvider.setKeterangan = {
                                    'orderID':
                                        orderProvider.getOrderList.length + 1,
                                    'namaToko': val['NamaLokasi'],
                                    'alamatToko': val['Location'],
                                    'idToko': 1,
                                    'totalHarga': val['harga'].toString(),
                                    'cartList': "pesan"
                                  };
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => PaymentMethod(
                                              shipping: "tiket"))));
                                },
                                Rating: val['Rating'],
                                comments: val['Comment'],
                              )));
                },
                LokasiGambar: val['lokasigambar'],
                NamaLokasi: val['NamaLokasi'],
                JumlahRecomend: val['Jumlahrecomend'],
                Harga: val['harga']);
          }).toList())
        ],
      ),
    );
  }
}
