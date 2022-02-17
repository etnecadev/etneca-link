import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PackagesPage extends StatefulWidget {
  static const routeName = '/packages';

  @override
  State<PackagesPage> createState() => _PackagesPageState();
}

class _PackagesPageState extends State<PackagesPage> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'package',
          child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          elevation: 0,
          centerTitle: true,
          leading: Center(
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, size: 25,color: Color.fromRGBO(93, 90, 97, 1),),
              onPressed: () {
                // scaffoldKey.currentState?.openDrawer();
                Navigator.pop(context);
              },
            ),
          ),
          title: Text(
            'Packages',
            style: GoogleFonts.kanit(textStyle:TextStyle(
                color: Color.fromRGBO(93, 90, 97, 1),
                fontSize: 20,
                fontWeight: FontWeight.w500)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
                  height: 330,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Color.fromRGBO(166, 210, 204, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomRight: Radius.circular(40)),
              ),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.ship,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 30,
                ),
              ),
                          ),
                          Flexible(
                child: ListTile(
              title: Text("เรือประมง เรือน้ำมัน เรือบรรทุกสินค้า ฯลฯ",
                  style: GoogleFonts.kanit(textStyle:TextStyle(
                      color: Color.fromRGBO(93, 90, 97, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w700))),
              subtitle: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.mapPin,
                    color: Color.fromRGBO(203, 202, 205, 1),
                    size: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("แสดงตำแหน่งทุก 1 ชั่วโมง",
                      style: GoogleFonts.kanit(textStyle:TextStyle(
                          color: Color.fromRGBO(93, 90, 97, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400))),
                ],
              ),
                          ))
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "2,000 บาท",
                          style: GoogleFonts.kanit(textStyle:TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.w700)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec ante lectus. Praesent nibh ante, pulvinar sed felis eget, congue iaculis nisi. Sed et tortor turpis. Sed pretium, mi ut venenatis pharetra, libero quam tincidunt nisi, id fermentum sem nisi eu est.",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.kanit(textStyle:TextStyle(
                color: Color.fromRGBO(93, 90, 97, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400)),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: ToggleSwitch(
                          initialLabelIndex: 0,
                          minWidth: 85,
                          totalSwitches: 4,
                          activeBgColor: [Color.fromRGBO(166, 210, 204, 1)],
                          borderColor: [Color.fromRGBO(166, 210, 204, 1)],
                          borderWidth: 1.0,
                          fontSize: 14,
                          animate: false,
                          dividerColor: Color.fromRGBO(166, 210, 204, 1),
                          inactiveBgColor: Colors.white,
                          labels: ['1 month', '3 month', '6 month', '12 month'],
                          onToggle: (index) {
              print('switched to: $index');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 330,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(249, 222, 141, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomRight: Radius.circular(40)),
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.ship,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              size: 30,
                            ),
                          ),
                        ),
                        Flexible(
                            child: ListTile(
                          title: Text("เรือประมง เรือน้ำมัน เรือบรรทุกสินค้า ฯลฯ",
                              style: GoogleFonts.kanit(textStyle:TextStyle(
                                  color: Color.fromRGBO(93, 90, 97, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700))),
                          subtitle: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.mapPin,
                                color: Color.fromRGBO(203, 202, 205, 1),
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("แสดงตำแหน่งทุก 1 ชั่วโมง",
                                  style: GoogleFonts.kanit(textStyle:TextStyle(
                                      color: Color.fromRGBO(93, 90, 97, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))),
                            ],
                          ),
                        ))
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "2,000 บาท",
                        style: GoogleFonts.kanit(textStyle:TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec ante lectus. Praesent nibh ante, pulvinar sed felis eget, congue iaculis nisi. Sed et tortor turpis. Sed pretium, mi ut venenatis pharetra, libero quam tincidunt nisi, id fermentum sem nisi eu est.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.kanit(textStyle:TextStyle(
                            color: Color.fromRGBO(93, 90, 97, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: ToggleSwitch(
                        initialLabelIndex: 0,
                        minWidth: 85,
                        totalSwitches: 4,
                        activeBgColor: [Color.fromRGBO(249, 222, 141, 1)],
                        borderColor: [Color.fromRGBO(249, 222, 141, 1)],
                        borderWidth: 1.0,
                        fontSize: 14,
                        animate: false,
                        dividerColor: Color.fromRGBO(249, 222, 141, 1),
                        inactiveBgColor: Colors.white,
                        labels: ['1 month', '3 month', '6 month', '12 month'],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 330,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(173, 139, 216, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomRight: Radius.circular(40)),
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.ship,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              size: 30,
                            ),
                          ),
                        ),
                        Flexible(
                            child: ListTile(
                          title: Text("เรือประมง เรือน้ำมัน เรือบรรทุกสินค้า ฯลฯ",
                              style: GoogleFonts.kanit(textStyle:TextStyle(
                                  color: Color.fromRGBO(93, 90, 97, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700))),
                          subtitle: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.mapPin,
                                color: Color.fromRGBO(203, 202, 205, 1),
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("แสดงตำแหน่งทุก 1 ชั่วโมง",
                                  style: GoogleFonts.kanit(textStyle:TextStyle(
                                      color: Color.fromRGBO(93, 90, 97, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))),
                            ],
                          ),
                        ))
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "2,000 บาท",
                        style: GoogleFonts.kanit(textStyle:TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec ante lectus. Praesent nibh ante, pulvinar sed felis eget, congue iaculis nisi. Sed et tortor turpis. Sed pretium, mi ut venenatis pharetra, libero quam tincidunt nisi, id fermentum sem nisi eu est.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.kanit(textStyle:TextStyle(
                            color: Color.fromRGBO(93, 90, 97, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: ToggleSwitch(
                        initialLabelIndex: 0,
                        minWidth: 85,
                        totalSwitches: 4,
                        activeBgColor: [
                          Color.fromRGBO(173, 139, 216, 1),
                        ],
                        borderColor: [Color.fromRGBO(173, 139, 216, 1)],
                        borderWidth: 1.0,
                        fontSize: 14,
                        animate: false,
                        dividerColor: Color.fromRGBO(173, 139, 216, 1),
                        inactiveBgColor: Colors.white,
                        labels: ['1 month', '3 month', '6 month', '12 month'],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 330,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(95, 152, 227, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomRight: Radius.circular(40)),
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.ship,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              size: 30,
                            ),
                          ),
                        ),
                        Flexible(
                            child: ListTile(
                          title: Text("เรือประมง เรือน้ำมัน เรือบรรทุกสินค้า ฯลฯ",
                              style: GoogleFonts.kanit(textStyle:TextStyle(
                                  color: Color.fromRGBO(93, 90, 97, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700))),
                          subtitle: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.mapPin,
                                color: Color.fromRGBO(203, 202, 205, 1),
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("แสดงตำแหน่งทุก 1 ชั่วโมง",
                                  style: GoogleFonts.kanit(textStyle:TextStyle(
                                      color: Color.fromRGBO(93, 90, 97, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))),
                            ],
                          ),
                        ))
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "2,000 บาท",
                        style: GoogleFonts.kanit(textStyle:TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec ante lectus. Praesent nibh ante, pulvinar sed felis eget, congue iaculis nisi. Sed et tortor turpis. Sed pretium, mi ut venenatis pharetra, libero quam tincidunt nisi, id fermentum sem nisi eu est.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.kanit(textStyle:TextStyle(
                            color: Color.fromRGBO(93, 90, 97, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: ToggleSwitch(
                        initialLabelIndex: 0,
                        minWidth: 85,
                        totalSwitches: 4,
                        activeBgColor: [Color.fromRGBO(95, 152, 227, 1)],
                        borderColor: [Color.fromRGBO(95, 152, 227, 1)],
                        borderWidth: 1.0,
                        fontSize: 14,
                        animate: false,
                        dividerColor: Color.fromRGBO(95, 152, 227, 1),
                        inactiveBgColor: Colors.white,
                        labels: ['1 month', '3 month', '6 month', '12 month'],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 330,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 178, 138, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomRight: Radius.circular(40)),
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.ship,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              size: 30,
                            ),
                          ),
                        ),
                        Flexible(
                            child: ListTile(
                          title: Text("เรือประมง เรือน้ำมัน เรือบรรทุกสินค้า ฯลฯ",
                              style: GoogleFonts.kanit(textStyle:TextStyle(
                                  color: Color.fromRGBO(93, 90, 97, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700))),
                          subtitle: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.mapPin,
                                color: Color.fromRGBO(203, 202, 205, 1),
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("แสดงตำแหน่งทุก 1 ชั่วโมง",
                                  style: GoogleFonts.kanit(textStyle:TextStyle(
                                      color: Color.fromRGBO(93, 90, 97, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))),
                            ],
                          ),
                        ))
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "2,000 บาท",
                        style: GoogleFonts.kanit(textStyle:TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec ante lectus. Praesent nibh ante, pulvinar sed felis eget, congue iaculis nisi. Sed et tortor turpis. Sed pretium, mi ut venenatis pharetra, libero quam tincidunt nisi, id fermentum sem nisi eu est.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.kanit(textStyle:TextStyle(
                            color: Color.fromRGBO(93, 90, 97, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: ToggleSwitch(
                        initialLabelIndex: 0,
                        minWidth: 85,
                        totalSwitches: 4,
                        activeBgColor: [Color.fromRGBO(241, 178, 138, 1)],
                        borderColor: [Color.fromRGBO(241, 178, 138, 1)],
                        borderWidth: 1.0,
                        fontSize: 14,
                        animate: false,
                        dividerColor: Color.fromRGBO(241, 178, 138, 1),
                        inactiveBgColor: Colors.white,
                        labels: ['1 month', '3 month', '6 month', '12 month'],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 330,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(237, 116, 108, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomRight: Radius.circular(40)),
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.ship,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              size: 30,
                            ),
                          ),
                        ),
                        Flexible(
                            child: ListTile(
                          title: Text("เรือประมง เรือน้ำมัน เรือบรรทุกสินค้า ฯลฯ",
                              style: GoogleFonts.kanit(textStyle:TextStyle(
                                  color: Color.fromRGBO(93, 90, 97, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700))),
                          subtitle: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.mapPin,
                                color: Color.fromRGBO(203, 202, 205, 1),
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("แสดงตำแหน่งทุก 1 ชั่วโมง",
                                  style: GoogleFonts.kanit(textStyle:TextStyle(
                                      color: Color.fromRGBO(93, 90, 97, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))),
                            ],
                          ),
                        ))
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "2,000 บาท",
                        style: GoogleFonts.kanit(textStyle:TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec ante lectus. Praesent nibh ante, pulvinar sed felis eget, congue iaculis nisi. Sed et tortor turpis. Sed pretium, mi ut venenatis pharetra, libero quam tincidunt nisi, id fermentum sem nisi eu est.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.kanit(textStyle:TextStyle(
                            color: Color.fromRGBO(93, 90, 97, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: ToggleSwitch(
                        initialLabelIndex: 0,
                        minWidth: 85,
                        totalSwitches: 4,
                        activeBgColor: [Color.fromRGBO(237, 116, 108, 1)],
                        borderColor: [Color.fromRGBO(237, 116, 108, 1)],
                        borderWidth: 1.0,
                        fontSize: 14,
                        animate: false,
                        dividerColor: Color.fromRGBO(237, 116, 108, 1),
                        inactiveBgColor: Colors.white,
                        labels: ['1 month', '3 month', '6 month', '12 month'],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
