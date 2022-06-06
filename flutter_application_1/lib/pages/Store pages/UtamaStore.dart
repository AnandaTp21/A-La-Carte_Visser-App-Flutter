
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
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_alt_outlined,
              color: Colors.white,
            )),
        centerTitle: true,
        title: Image.asset(
          'assets/logowhite.png',
          width: 51,
          height: 35,
        ),
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              )),
        ],
      ),
      body: bottomnavigasi.PagesStore[bottomnavigasi.params2],
    );
  }
}