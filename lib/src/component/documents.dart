import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DocumentsComponent extends StatelessWidget {
  List docCompany = [
    {
      "id": 001,
      "name": "เลขที่บัญชีบริษัทเอทนีก้า",
      "link": "www.google.com",
    },
    {
      "id": 002,
      "name": "ข้อมูลแพ็คเกจ VMS",
      "link": "www.google.com",
    },
  ];

  List docDownload = [
    {
      "id": 001,
      "name": "ประกาศกรมประมง-กำหนดหลักเกณฑ์และวิธีการติดตั้ง(ศฦป.1)",
      "link": "www.google.com",
    },
    {
      "id": 002,
      "name":
          "ประกาศกรมประมง-ขอปิดสัญญาณอุปกรณ์ระบุตำแหน่งเรือ(VMS)ชั่วคราว(ศฝป.4)",
      "link": "www.google.com",
    },
    {
      "id": 003,
      "name": "ใบยกเลิกการติดตั้งอุปกรณ์ระบุตำแน่งเรือ(ศฝป.2)",
      "link": "www.google.com",
    },
    {
      "id": 004,
      "name": "ประกาศกรมประมง-การล็อคตรึงและตีตราอุปกรณ์",
      "link": "www.google.com",
    },
    {
      "id": 005,
      "name":
          "ใบคำร้องขอติดอุปกรณ์ล็อคตรึงและตีตราอุปกรณ์ระบุตำแหน่งเรือประมง(VMS)(ศฝป.4)",
      "link": "www.google.com",
    },
    {
      "id": 006,
      "name": "ประกาศกรมประมง-การแจ้งเหตุเมื่อเรือไม่ส่งข้อมูล(ศฝป.7)",
      "link": "www.google.com",
    },
    {
      "id": 007,
      "name":
          "ประกาศกรมประมงของเรือขนถ่ายสัตว์น้ำที่ทำการขนถ่ายสัตว์น้ำนอกน่านน้ำไทย",
      "link": "www.google.com",
    },
    {
      "id": 008,
      "name": "การใช้งานแบบฟอร์ม ศฝป.1/ศฝป.2/ศฝป.4/ศฝป.7/ศจร.4",
      "link": "www.google.com",
    },
  ];

  List docPolicy = [
    {
      "id": 001,
      "name": "เงื่อนไขการรับประกันอุปกรณ์ และแบตเตอรี่",
      "link": "www.google.com",
    },
    {
      "id": 002,
      "name": "นโยบายคุ้มครองความเป็นส่วนตัว",
      "link": "www.google.com",
    },
    {
      "id": 003,
      "name": "ข้อกำหนดการใช้งานแอปพลิเคชันบนมือถือ เอทนีก้าลิงก์",
      "link": "www.google.com",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
           Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpandableNotifier(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                          "ข้อมูลบริษัท",
                          style: GoogleFonts.kanit(textStyle:TextStyle(
                              color: Color.fromRGBO(93, 90, 97, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                        ),
                      ),
                      collapsed: SizedBox(),
                      expanded: buildListCompany(),
                      builder: (_, collapsed, expanded) {
                        return Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
            ),
          ),
          ExpandableNotifier(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        "เอกสารให้ดาวน์โหลด",
                        style: GoogleFonts.kanit(textStyle:TextStyle(
                            color: Color.fromRGBO(93, 90, 97, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                      ),
                    ),
                    collapsed: SizedBox(),
                    expanded: buildListDownload(),
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
          ExpandableNotifier(
              child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        "นโยบายและเงื่อนไขการใช้งาน",
                        style: GoogleFonts.kanit(textStyle:TextStyle(
                            color: Color.fromRGBO(93, 90, 97, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                      ),
                    ),
                    collapsed: SizedBox(),
                    expanded: buildListPolicy(),
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
        ],
      ),
      ],
    );
  }

  buildListCompany() {
    return Column(
      children: <Widget>[
        for (var item in docCompany)
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
                          fontWeight: FontWeight.w400))),
                ),
                flex: 4,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: IconButton(
                    alignment: Alignment.centerRight,
                    icon: FaIcon(FontAwesomeIcons.download,
                        color: Color.fromRGBO(166, 210, 204, 1)),
                    onPressed: () async {
                      print(item["link"]);
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

  buildListDownload() {
    return Column(
      children: <Widget>[
        for (var item in docDownload)
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
                          fontWeight: FontWeight.w400))),
                ),
                flex: 4,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: IconButton(
                    alignment: Alignment.centerRight,
                    icon: FaIcon(FontAwesomeIcons.download,
                        color: Color.fromRGBO(166, 210, 204, 1)),
                    onPressed: () async {
                      print(item["link"]);
                    },
                  ),
                ),
              ),
            ],
          )
        
      ],
    );
  }

  buildListPolicy() {
    return Column(
      children: <Widget>[
        for (var item in docPolicy)
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
                          fontWeight: FontWeight.w400))),
                ),
                flex: 4,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: IconButton(
                    alignment: Alignment.centerRight,
                    icon: FaIcon(FontAwesomeIcons.download,
                        color: Color.fromRGBO(166, 210, 204, 1)),
                    onPressed: () async {
                      print(item["link"]);
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
}
