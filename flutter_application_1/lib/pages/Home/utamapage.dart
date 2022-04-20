import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/bottomprovider.dart';
import 'package:provider/provider.dart';
class utamapage extends StatefulWidget {
  const utamapage({ Key? key }) : super(key: key);

  @override
  State<utamapage> createState() => _utamapageState();
}

class _utamapageState extends State<utamapage> {
  @override
  Widget build(BuildContext context) {
    var navigasi = Provider.of<bottomprovider>(context);
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      body: navigasi.Pages2[navigasi.params2],
    );
  }
}