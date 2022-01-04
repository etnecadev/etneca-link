import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/component/Scaffold/ScaffoldWidget.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      child: Container(
        child: Center(child: BackButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        )),
      ),
    );
  }
}
