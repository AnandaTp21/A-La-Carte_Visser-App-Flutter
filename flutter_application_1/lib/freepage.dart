import 'package:flutter/material.dart';
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
                  MaterialPageRoute(builder: (conntext) => const storePage());
              Navigator.push(context, route);
            },
            child: const Text("StorePage"),
          ),
        ],
      )),
    );
  }
}
