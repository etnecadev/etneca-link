import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/utils/index.dart';

class SecondPage extends StatefulWidget {
  static const routeName = '/ship';
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

_Card() {
  return Container(
    margin: EdgeInsets.all(8),
    height: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Flexible(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.green,
                Colors.white,
              ],
            ),
        borderRadius: BorderRadius.circular(15),
      ),
              )),
          Flexible(
              flex: 17,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Helix Test"),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Text("Gen 1"), Text("เรือประมงพาณิชย์")],
                    )
                  ],
                ),
              ))
        ],
      ),
    ),
  );
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                color: Color.fromRGBO(240, 39, 70, 1),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.light.shadowColor,
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              width: 300,
              height: 100,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 18),
                    child: Center(
                      child: Text(
                        "จำนวนเรือทั้งหมด 20 ลำ",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: ListView(
              children: <Widget>[_Card()],
            ),
          )
        ],
      ),
    );
  }
}
