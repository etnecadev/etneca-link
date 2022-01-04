import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/page/index.dart';
import 'package:flutter_project_template/src/utils/index.dart';


var routes = <String, WidgetBuilder>{
  Constants.MAIN_ROUTE: (context) => MainPage(),
  Constants.SECOND_ROUTE: (context) => SecondPage(),
};
