import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home/WeightPage.dart';
import 'package:flutter_application_1/pages/Store%20pages/detailstore.dart';
import 'package:flutter_application_1/pages/Store%20pages/storepage.dart';

class freepage extends StatefulWidget {
  const freepage({Key? key}) : super(key: key);

  @override
  _freepageState createState() => _freepageState();
}

class _freepageState extends State<freepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => const storePage());
              Navigator.push(context, route);
            },
            child: const Text("StorePage"),
          ),
          ElevatedButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => const WeightPage());
              Navigator.push(context, route);
            },
            child: const Text("Weight"),
          ),
          ElevatedButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => const DetailStore());
              Navigator.push(context, route);
            },
            child: const Text("DetailStore"),
          ),
        ],
      )),
    );
  }
}
