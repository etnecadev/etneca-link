import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_template/src/utils/index.dart';
import 'package:google_fonts/google_fonts.dart';

import 'index.dart';

class MenuPage extends StatelessWidget {
  static const routeName = '/menu';
  const MenuPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.light.primaryColor,
        elevation: 0.0,
        leading: SizedBox(),
        title: Center(
            child: Text(
          "ETNECA LINK",
          style: GoogleFonts.kanit(textStyle: TextStyle(color: Colors.white)),
        )),
        // actions: [
        //   Container(
        //       child: CircleAvatar(
        //           backgroundColor: Color.fromRGBO(210, 100, 102, 0.5),
        //           radius: 50.0,
        //           child: ClipOval(
        //             child: CircleAvatar(
        //   backgroundImage: AssetImage('assets/images/profile.jpg'),
        //   radius: 25.0,
        //               ),
        //           )),
        //     ),
        // ],
      ),
      body: ContainedTabBarView(
        tabBarProperties: TabBarProperties(
          indicator: ContainerTabIndicator(
            color: AppTheme.light.primaryColor,
            widthFraction: 0.8,
            height: 4,
            padding: const EdgeInsets.only(top: 25),
          ),
          labelColor: Colors.red[900],
          unselectedLabelColor: Color.fromRGBO(203, 202, 205, 1),
        ),
        tabs: [
          Text('Dashboard', style: GoogleFonts.kanit()),
          Text('Notification', style: GoogleFonts.kanit()),
        ],
        views: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Flexible(
                    flex: 1,
                    child: Container(
                        child: _submenu(context, "assets/images/mapbg.jpg",
                            Icons.map, "MAP", "/map",'map'))),
                Flexible(
                    flex: 2,
                    child: Container(
                      child: Row(
                        children: [
                          Flexible(
                            child: Column(
                              children: [
                                Flexible(
                                    flex: 5,
                                    child: _submenu(
                                        context,
                                        "assets/images/boat.jpg",
                                        Icons.directions_boat,
                                        "SHIP",
                                        "/ship",
                                        'ship')),
                                Flexible(
                                    flex: 4,
                                    child: _submenu(
                                        context,
                                        "assets/images/news1.png",
                                        Icons.event_note_rounded,
                                        "NEWS",
                                        "/news",
                                        'news'))
                              ],
                            ),
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                Flexible(
                                    flex: 4,
                                    child: _submenu(
                                        context,
                                        "assets/images/pac.jpeg",
                                        Icons.shopping_basket,
                                        "PACKAGE",
                                        "/packages",
                                        'package')),
                                Flexible(
                                    flex: 5,
                                    child: _submenu(
                                        context,
                                        "assets/images/profile.jpg",
                                        Icons.account_circle_rounded,
                                        "USER",
                                        "/user",
                                        'user'))
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          NotificationPage()
        ],
        onChange: (index) => print(index),
      ),
    );
  }
}

_submenu(context, image, icon, title, route,hero) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, route);
    },
    child: Hero(
          tag: '$hero',
          child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppTheme.light.primaryColor,
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 25, color: Colors.white),
            Container(
              margin: EdgeInsets.only(left: 5, bottom: 5),
              child: Text(
                title,
                style: GoogleFonts.kanit(
                    textStyle: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
