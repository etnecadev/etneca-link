import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const routeName = '/ship';
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

_Card() {
  return Container(
    margin: EdgeInsets.all(8),
    height: 75,
    child: Row(
      children: [
        Flexible(flex: 19, child: Center(child: Text('Entry A'))),
        Flexible(
            flex: 1,
            child: Container(
              color: Colors.green,
            ))
      ],
    ),
  );
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: ListView(
              children: <Widget>[
                _Card(),
                _Card(),
                _Card()
              ],
            ),
          )
        ],
      ),
    );
  }
}
