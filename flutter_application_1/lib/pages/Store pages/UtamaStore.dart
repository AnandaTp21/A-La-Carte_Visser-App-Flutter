
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:provider/provider.dart';
class UtamaStore extends StatefulWidget {
  const UtamaStore({ Key? key }) : super(key: key);

  @override
  State<UtamaStore> createState() => _UtamaStoreState();
}

class _UtamaStoreState extends State<UtamaStore> {
  @override
  Widget build(BuildContext context) {
    var bottomnavigasi = Provider.of<bottomprovider>(context);
    return Scaffold(
      body: bottomnavigasi.PagesStore[bottomnavigasi.params2],
    );
  }
}