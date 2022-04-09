import 'package:flutter/material.dart';
<<<<<<< HEAD
<<<<<<< HEAD
import 'package:flutter_application_1/pages/Home/EventPage.dart';
=======
=======
>>>>>>> f51b6f1d634fe90df2c0cd1156ddfec75b8692a0
import 'package:flutter_application_1/freepage.dart';
import 'package:flutter_application_1/pages/TimePAge.dart';
import 'package:flutter_application_1/pages/login.dart';
<<<<<<< HEAD
>>>>>>> f30f463653821cb8a69a147328b19accb6f6de73
=======
import 'package:flutter_application_1/pages/Home/EventPage.dart';

>>>>>>> f51b6f1d634fe90df2c0cd1156ddfec75b8692a0

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
<<<<<<< HEAD
<<<<<<< HEAD
      home: const EventPage(),
=======
      home: const freepage(),
>>>>>>> f30f463653821cb8a69a147328b19accb6f6de73
=======

      home: const freepage(),

>>>>>>> f51b6f1d634fe90df2c0cd1156ddfec75b8692a0
    );
  }
}

