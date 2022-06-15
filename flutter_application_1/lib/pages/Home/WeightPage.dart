import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/carousel.dart';
import 'package:flutter_application_1/Component/carousel_list.dart';
import 'package:flutter_application_1/Component/homecomponent/WeightPageComponent.dart';
import 'package:flutter_application_1/Component/homecomponent/judulpage.dart';
import 'package:flutter_application_1/Provider/Home_Provider.dart';
import 'package:flutter_application_1/Provider/Order_Provider.dart';
import 'package:flutter_application_1/pages/Home/Detail/DetailVisserWeight.dart';
import 'package:flutter_application_1/pages/Payment%20Pages/PaymentMethod.dart';
import 'package:provider/provider.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({ Key? key }) : super(key: key);

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  @override
  Widget build(BuildContext context) {
    final dataweight = Provider.of<Home_Provider>(context);
    var orderProvider = Provider.of<Order_Provider>(context);
    return Container(
        decoration: BoxDecoration(color: Color.fromRGBO(231, 223, 212, 1)),
        child: 
            ListView(
                padding: EdgeInsets.only(top: 0),
              children: [
                carousel(items: dataweight.AmbilCarouselWeight.map((e){
                  return CarouselList(lokasiGambar: e);
                }).toList()),
                judulpage(judul: "Weight Visser",),
                Column(
                  children: dataweight.AmbilDataWeight.map((val){
                    return WeightPageComponent(press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailVisserWeight(lokasigambar: val['lokasigambar'],judul: val['NamaLokasi'], recommend: val['Jumlahrecomend'] ,hargaawal: val['hargaawal'], harga: val['harga'],Location: val['Location'],Fasilitas: val['fasilitas'],press: (){
                        orderProvider.setKeterangan = {
                                  'namaToko': val['NamaLokasi'],
                                  'alamatToko': val['Location'],
                                  'totalHarga': val['harga'].toString(),
                                };
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => PaymentMethod(shipping: "Ticket"))));
                      },Rating: val['Rating'],comments: val['Comment'])));
                    }, LokasiGambar: val['lokasigambar'], NamaLokasi: val['NamaLokasi'], JumlahRecomend: val['Jumlahrecomend'], Hargaawal: val['hargaawal'], Harga: val['harga']);
                  }).toList()
                )
              ],
            ),
          );
  }
}