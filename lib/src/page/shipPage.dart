import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/utils/index.dart';

class SecondPage extends StatefulWidget {
  static const routeName = '/ship';
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

_Card(color) {
  return GestureDetector(
    onTap: () {
      print("hi");
    },
    child: Container(
      margin: EdgeInsets.only(top: 20),
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: AppTheme.light.shadowColor,
            spreadRadius: 0,
            blurRadius: 6,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 50),
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
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Gen 1",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Helix Test",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        title: Center(
            child: Text(
          "Ship",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(right: 8),
              child: Text(
                "จำนวนเรือ 2 ลำ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Flexible(
              child: ListView(
                children: <Widget>[_Card(Colors.blue), _Card(Colors.red)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
