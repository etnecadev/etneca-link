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
      height: 75,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: color,
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(left: 75),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10)),
        ),
        child: Center(
          child: Text(
            "Helix Test",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    ),
  );
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                  color: AppTheme.light.primaryColor,
                ),
                width: double.infinity,
                height: 200,
                child: Center(
                  child: Text(
                    "จำนวนเรือทั้งหมด 20 ลำ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                )),
            Flexible(
              child: ListView(
                children: <Widget>[_Card(Colors.blue), _Card(Colors.red)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
