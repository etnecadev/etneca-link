import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/component/scaffold/ScaffoldWidget.dart';
import 'package:flutter_project_template/src/page/index.dart';

class MapPage extends StatefulWidget {
    static const routeName = '/map';
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: Text(''),
      child: Container(
        child: Image.asset(
          'assets/images/seamap.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}

