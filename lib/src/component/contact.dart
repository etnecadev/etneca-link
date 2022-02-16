import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactComponent extends StatelessWidget {
 
  List contacts = [
    {
      "id": 001,
      "name": "ฝ่ายบริการลูกค้า 1",
      "phone": "0627555955",
    },
    {
      "id": 002,
      "name": "ฝ่ายบริการลูกค้า 2",
      "phone": "0982477255",
    },
    {
      "id": 003,
      "name": "ฝ่ายบริการลูกค้า 3",
      "phone": "0984566977",
    },
    {
      "id": 004,
      "name": "เบอร์โทรสำนักงาน 1",
      "phone": "024159741",
    },
    {
      "id": 005,
      "name": "เบอร์โทรสำนักงาน 2",
      "phone": "024159742",
    },
  ];

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpandableNotifier(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ScrollOnExpand(
                scrollOnExpand: true,
                scrollOnCollapse: false,
                child: ExpandablePanel(
                  theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: false,
                      iconColor: Colors.black),
                  header: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "ติดต่อเรา",
                      style: GoogleFonts.kanit(textStyle:TextStyle(
                          color: Color.fromRGBO(93, 90, 97, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                    ),
                  ),
                  collapsed: SizedBox(),
                  expanded: buildList(),
                  builder: (_, collapsed, expanded) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                 margin: EdgeInsets.only(left: 30),
               
                child: Text("อีเมล์ฝ่ายลูกค้าสัมพันธ์",
                    style: GoogleFonts.kanit(textStyle:TextStyle(
                        color: Color.fromRGBO(93, 90, 97, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500))),
              ),
              // margin: EdgeInsets.symmetric(horizontal: 30),
            ),

            Expanded(
             flex: 1,
              child: Container(
                margin: EdgeInsets.only(right: 20),
                alignment: Alignment.centerRight,
                child: Text("admin@etneca.co.th",
                     style: GoogleFonts.kanit(textStyle:TextStyle(
                                color: Color.fromRGBO(93, 90, 97, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w500))),
              ),
              // margin: EdgeInsets.symmetric(horizontal: 30),
            ),
          ],
        ),
      ],
    );
  }

  buildList() {
    return Column(
      children: <Widget>[
        for (var item in contacts)
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(item["name"],
                      style: GoogleFonts.kanit(textStyle:TextStyle(
                          color: Color.fromRGBO(93, 90, 97, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500))),
                ),
                flex: 4,
              ),
              Expanded(
                child: Align(
                  child: Container(
                      child: Text(item["phone"],
                          textAlign: TextAlign.left,
                          style: GoogleFonts.kanit(textStyle:TextStyle(
                              color: Color.fromRGBO(93, 90, 97, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)))),
                  alignment: Alignment.centerRight,
                ),
                flex: 4,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: IconButton(
                    alignment: Alignment.centerRight,
                    icon: Icon(Icons.phone,
                        color: Color.fromRGBO(166, 210, 204, 1)),
                    onPressed: () async {
                      print(item["phone"]);
                      final Uri launchUri = Uri(
                        scheme: 'tel',
                        path: item["phone"],
                      );
                      await launch(launchUri.toString());
                    },
                  ),
                ),
              ),
            ],
          )
        // for (var i in [1, 2, 3, 4]) buildItem("Item ${i}"),
      ],
    );
  }

  // buildItem(String label) {
  //   return Padding(
  //     padding: const EdgeInsets.all(10.0),
  //     child: Text(label),
  //   );
  // }
}
