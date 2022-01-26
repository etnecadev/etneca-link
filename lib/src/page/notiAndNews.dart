import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/component/scaffold/scaffoldWidget.dart';
import 'package:flutter_project_template/src/page/index.dart';

class NotiAndNews extends StatelessWidget {
  const NotiAndNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: 300,
        child: ContainedTabBarView(
          tabBarProperties: TabBarProperties(
            indicator: ContainerTabIndicator(
              widthFraction: 1,
              height: 4,
              padding: const EdgeInsets.only(top: 26),
            ),
          ),
          initialIndex: 0,
          tabs: [
            Text('First'),
            Text('Second'),
          ],
          views: [MapPage(),SecondPage()],
          onChange: (index) => print(index),
        ),
      ),
    );
  }
}
