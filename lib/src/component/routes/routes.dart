import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/component/scaffold/scaffoldWidget.dart';
import 'package:flutter_project_template/src/page/index.dart';
import 'package:flutter_project_template/src/utils/index.dart';


var routes = <String, WidgetBuilder>{
  Constants.MAIN_ROUTE: (context) => ScaffoldWidget(),
  Constants.FIRST_ROUTE: (context) => MapPage(),
  Constants.SECOND_ROUTE: (context) => SecondPage(),
  Constants.NOTIANDNEWS_ROUTE: (context) => NotiAndNews(),
};
