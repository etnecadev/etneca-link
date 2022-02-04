import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/page/index.dart';
import 'package:flutter_project_template/src/utils/index.dart';

class MenuPage extends StatelessWidget {
  static const routeName = '/menu';
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.light.primaryColor,
        elevation: 0.0,
        leading: SizedBox(),
        title: Center(
            child: Text(
          "ETNECA LINK",
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: 45,
            height: 45,
            child: CircleAvatar(
                backgroundColor: AppTheme.light.accentColor,
                radius: 100.0,
                child: ClipOval(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    radius: 92.0,
                  ),
                )),
          ),
        ],
      ),
      body: Container(
        color: AppTheme.light.primaryColor,
        child: ContainedTabBarView(
          tabBarProperties: TabBarProperties(
            indicator: ContainerTabIndicator(
              color: Colors.white,
              widthFraction: 0.8,
              height: 4,
              padding: const EdgeInsets.only(top: 25),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
          ),
          tabs: [
            Text('menu'),
            Text('Contact us'),
          ],
          views: [
            Container(
              color: Colors.grey[300],
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: _submenu(context, "assets/images/bgmap.png",
                          Icons.map, "Map", "/map")),
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: _submenu(
                                        context,
                                        "assets/images/bgmap.png",
                                        Icons.directions_boat,
                                        "Ship",
                                        "/map")),
                                Expanded(
                                    flex: 4,
                                    child: _submenu(
                                        context,
                                        "assets/images/bgmap.png",
                                        Icons.event_note_rounded,
                                        "News",
                                        "/map"))
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: _submenu(
                                        context,
                                        "assets/images/bgmap.png",
                                        Icons.map,
                                        "package",
                                        "/map")),
                                Expanded(
                                    flex: 5,
                                    child: _submenu(
                                        context,
                                        "assets/images/bgmap.png",
                                        Icons.account_circle_rounded,
                                        "User",
                                        "/user"))
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(color: Colors.blue),
          ],
          onChange: (index) => print(index),
        ),
      ),
    );
  }
}

_submenu(context, image, icon, title, route) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, route);
    },
    child: Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.red.withOpacity(0.2), BlendMode.dstATop)),
          borderRadius: BorderRadius.circular(30),
          color: AppTheme.light.primaryColor),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 70, color: Colors.white),
          Container(
            margin: EdgeInsets.only(left: 5, bottom: 5),
            child: Text(
              title,
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          )
        ],
      ),
    ),
  );
}
