import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/Home_Provider.dart';
import 'package:flutter_application_1/Provider/Order_Provider.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:flutter_application_1/Provider/login_Provider.dart';
import 'package:flutter_application_1/freepage.dart';
import 'package:flutter_application_1/pages/Home/Detail/DetailVisserEvent.dart';
import 'package:flutter_application_1/pages/Home/Timepage.dart';
import 'package:flutter_application_1/pages/Home/WeightPage.dart';
import 'package:flutter_application_1/pages/Home/utamapage.dart';
import 'package:flutter_application_1/pages/Payment%20Pages/OrderSuccess.dart';
import 'package:flutter_application_1/pages/Store%20pages/storepage.dart';
import 'package:flutter_application_1/pages/NearYou.dart';
import 'package:flutter_application_1/pages/register.dart';
import 'package:flutter_application_1/pages/utama.dart';
import 'package:flutter_application_1/pages/verification.dart';
import 'package:provider/provider.dart';
import 'Provider/Store_Provider.dart';
import 'package:flutter_application_1/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => StoreProvider()),
        ChangeNotifierProvider(create: (context) => Home_Provider()),
        ChangeNotifierProvider(create: (context) => account_Provider()),
        ChangeNotifierProvider(create: (context) => bottomprovider()),
        ChangeNotifierProvider(create: (context) => Order_Provider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: login()),
    );
  }
}
