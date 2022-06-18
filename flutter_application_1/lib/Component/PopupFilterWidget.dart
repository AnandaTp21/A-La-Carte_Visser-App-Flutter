import 'package:flutter/material.dart';

class PopupFilterWidget extends StatefulWidget {
  final String jenis;
  const PopupFilterWidget({Key? key, required this.jenis}) : super(key: key);

  @override
  State<PopupFilterWidget> createState() => _PopupFilterWidgetState();
}

class _PopupFilterWidgetState extends State<PopupFilterWidget> {
  @override
  int radioGroup = 0;
  Widget build(BuildContext context) {
    return filter(widget.jenis);
  }

  filter(jenis) {
    int radioValue1 = 1;
    int radioValue2 = 2;
    int radioValue3 = 3;
    if (jenis == "store") {
      return AlertDialog(
        insetPadding: EdgeInsets.all(0),
        backgroundColor: const Color.fromARGB(0xFF, 0xE7, 0xDF, 0xD4),
        content: Column(mainAxisSize: MainAxisSize.min, children: [
          const Text(
            "SORT",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          RadioListTile(
              activeColor: Colors.black,
              title: Text("Highest price"),
              value: radioValue1,
              groupValue: radioGroup,
              onChanged: (val) {
                setState(() {
                  radioGroup = val as int;
                });
              }),
          RadioListTile(
              activeColor: Colors.black,
              title: Text("Lowest price"),
              value: radioValue2,
              groupValue: radioGroup,
              onChanged: (val) {
                setState(() {
                  radioGroup = val as int;
                });
              }),
          RadioListTile(
              activeColor: Colors.black,
              title: Text("Popularity"),
              value: radioValue3,
              groupValue: radioGroup,
              onChanged: (val) {
                setState(() {
                  radioGroup = val as int;
                });
              }),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Location",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Color.fromARGB(0xFF, 0xF0, 0xEB, 0xE5),
            ),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text("Enter a new address")
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(120, 40),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  primary: Color.fromRGBO(32, 62, 88, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
              onPressed: () {},
              child: Text(
                "OK",
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ]),
      );
    }
  }
}
