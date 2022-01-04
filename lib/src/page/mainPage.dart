import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/component/Scaffold/ScaffoldWidget.dart';
import 'package:flutter_project_template/src/utils/index.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      child: Container(
        child: Center(
            child: IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: () {
            Navigator.pushNamed(context, Constants.SECOND_ROUTE);
          },
        )),
      ),
    );
  }
}
