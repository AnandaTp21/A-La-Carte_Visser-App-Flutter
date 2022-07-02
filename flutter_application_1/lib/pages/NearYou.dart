import 'package:flutter/material.dart';

class NearYou extends StatefulWidget {
  const NearYou({Key? key}) : super(key: key);

  @override
  State<NearYou> createState() => _NearYouState();
}

class _NearYouState extends State<NearYou> {
  bool tampilan = false;
  TextEditingController alamat = TextEditingController();
  List allalamat = [
    {"Lokasi": "Bahari,Medan", "provinsi": "Sumatera Utara"},
    {"Lokasi": "Bahari,Medan", "provinsi": "Sumatera Utara"},
    {"Lokasi": "Bahari,Medan", "provinsi": "Sumatera Utara"},
  ];
  bool choicelist = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7DFD4),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(80, 119, 122, 1),
        title: Image.asset(
          'assets/logowhite.png',
          width: 51,
          height: 35,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 50, left: 10, right: 10),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              child: Text("Find fising ponds near you",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              child: Text(
                "Please enter your location or allow access to",
                style: TextStyle(color: Colors.grey, fontSize: 22),
              ),
            ),
            Text(
              "your location to find finshing ponds near you.",
              style: TextStyle(color: Colors.grey, fontSize: 22),
            ),
            Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      primary: Color(0xffB13126),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      side: BorderSide(
                        color: Color(0xffB13126),
                      )),
                  icon: Icon(Icons.near_me),
                  label: Text("Use current location"),
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                onChanged: (val) {
                  setState(() {
                    if (val.isNotEmpty) {
                      tampilan = true;
                    } else {
                      tampilan = false;
                    }
                  });
                },
                controller: alamat,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF0EBE5),
                    hintText: "Enter A New address",
                    prefixIcon: Icon(Icons.pin),
                    border: OutlineInputBorder(),
                    suffixIcon: Visibility(
                      visible: choicelist,
                      child: Icon(Icons.dangerous),
                    )),
              ),
            ),
            tampilan
                ? Container(
                    color: Color(0xffF0EBE5).withOpacity(0.3),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Expanded(
                      child: Column(
                        children: allalamat.map((e) {
                          return ListTile(
                            onTap: () {
                              setState(() {
                                alamat =
                                    TextEditingController(text: e['Lokasi']);
                                tampilan = false;
                                choicelist = true;
                              });
                            },
                            title: Text(e['Lokasi']),
                            subtitle: Text(e['provinsi']),
                            leading: Icon(Icons.near_me),
                          );
                        }).toList(),
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
