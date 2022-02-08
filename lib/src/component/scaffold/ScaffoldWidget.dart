import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/utils/index.dart';

class ScaffoldWidget extends StatelessWidget {
  final Widget title;
  final Widget child;
  ScaffoldWidget({
    required this.child,
    required this.title,
  });
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Center(
          child: IconButton(
            icon: Icon(Icons.menu, size: 45),
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        title: title,
        actions: [
          
        ],
      ),
      // drawer: Drawer(
      //   // Add a ListView to the drawer. This ensures the user can scroll
      //   // through the options in the drawer if there isn't enough vertical
      //   // space to fit everything.
      //   child: Container(
      //     decoration: BoxDecoration(
      //       borderRadius: new BorderRadius.only(
      //         topRight: const Radius.circular(40.0),
      //       ),
      //     ),
      //     child: ListView(
      //       // Important: Remove any padding from the ListView.
      //       padding: EdgeInsets.zero,
      //       children: [
      //         const DrawerHeader(
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage('assets/images/bg4.jpg'),
      //               fit: BoxFit.cover,
      //             ),
      //             color: Colors.blue,
      //           ),
      //           child: Text('Drawer Header'),
      //         ),
      //         ListTile(
      //           title: const Text('แผนที่'),
      //           onTap: () {
      //             Navigator.pushNamed(context, Constants.MAP_ROUTE);
      //           },
      //         ),
      //         ListTile(
      //           title: const Text('ข้อมูลเรือ'),
      //           onTap: () {
      //             Navigator.pushNamed(context, Constants.SECOND_ROUTE);
      //           },
      //         ),
      //         ListTile(
      //           title: const Text('แจ้งเตือน'),
      //           onTap: () {
      //             Navigator.pushNamed(context, Constants.NOTIANDNEWS_ROUTE);
      //           },
      //         ),
      //         ListTile(
      //           title: const Text('ข้อมูลผู้ใช้'),
      //           onTap: () {
      //             Navigator.pushNamed(context, Constants.USER_ROUTE);
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      extendBodyBehindAppBar: true,
      body: child,
    );
  }
}
