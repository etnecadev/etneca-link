import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/utils/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatefulWidget {
  static const routeName = '/ship';
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

_Card(context, color) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, "/shipdatapage");
    },
    child: Container(
      margin: EdgeInsets.only(top: 20),
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 30),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.only(
              // bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "เรือประมงพาณิชย์",
              style: GoogleFonts.kanit(textStyle:TextStyle(
                 color: Color.fromRGBO(93, 90, 97, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Gen 1",
                  style: GoogleFonts.kanit(textStyle:TextStyle(
                     color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.w400)),
                ),
                Text(
                  "Helix Test",
                  style: GoogleFonts.kanit(textStyle:TextStyle(
                      color: Color.fromRGBO(93, 90, 97, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Ship',
          style: GoogleFonts.kanit(
              textStyle: TextStyle(
                  color: Color.fromRGBO(93, 90, 97, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
      Hero(
        tag: 'ship',
              child: Container(
          margin: EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: FaIcon(
                          FontAwesomeIcons.ship,
                          color: Color.fromRGBO(93, 90, 97, 1),
                          size: 20,
                        ),
               ),
              Text(
                "จำนวนเรือ 2 ลำ",
                style: GoogleFonts.kanit(
              textStyle:TextStyle(
                      color: Color.fromRGBO(93, 90, 97, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
      ),
      Flexible(
        child: ListView(
          children: <Widget>[
            _Card(
              context,
              Color.fromRGBO(166, 210, 204, 1),
            ),
            _Card(
              context,
              Color.fromRGBO(237, 116, 108, 1),
            )
          ],
        ),
      ),
            ],
          ),
        ),
    );
  }
}
