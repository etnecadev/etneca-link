import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/component/contact.dart';
import 'package:flutter_project_template/src/component/documents.dart';
import 'package:flutter_project_template/src/component/news.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserPage extends StatefulWidget {
  static const routeName = '/user';
  const UserPage({Key? key}) : super(key: key);
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(250, 160, 160, 1),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromRGBO(210, 100, 102, 1).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  width: double.infinity,
                  height: 280,
                ),
                Positioned(
                  right: 50,
                  top: 70,
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.cog,
                      color: Color.fromRGBO(255, 255, 255, 0.5),
                      size: 25,
                    ),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Hero(
                    tag: 'User Avatar Image',
                    child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(210, 100, 102, 0.5),
                        radius: 100.0,
                        child: ClipOval(
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.jpg'),
                            radius: 92.0,
                          ),
                        )),
                  ),
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Dwight Schrute",
                  style: TextStyle(
                      color: Color.fromRGBO(93, 90, 97, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                )),
            Container(
                child: Text(
              "general ship customers",
              style: TextStyle(
                  color: Color.fromRGBO(93, 90, 97, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            )),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "Thailand",
                style: TextStyle(
                    color: Color.fromRGBO(203, 202, 205, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  color: Color.fromRGBO(250, 160, 160, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(210, 100, 102, 1).withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                width: 400,
                height: 100,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 200,
                          child: Center(
                            child: Text(
                              "20",
                              style: TextStyle(
                                  color: Color.fromRGBO(210, 78, 78, 1),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Center(
                            child: Text(
                              "20",
                              style: TextStyle(
                                  color: Color.fromRGBO(210, 78, 78, 1),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          width: 200,
                          child: Center(
                            child: Text(
                              "SHIP",
                              style: TextStyle(
                                  color: Color.fromRGBO(210, 70, 70, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          width: 200,
                          child: Center(
                            child: Text(
                              "PAYMENTS",
                              style: TextStyle(
                                  color: Color.fromRGBO(210, 70, 70, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              width: double.infinity,
              height: 500,
              child: DefaultTabController(

                length: 3,
                child: ContainedTabBarView(

                  tabBarProperties: TabBarProperties(
                    indicator: ContainerTabIndicator(
                      color: Color.fromRGBO(166, 210, 204, 1),
                      widthFraction: 0.3,
                      height: 4,
                      padding: const EdgeInsets.only(top: 15),
                    ),
                 
                    indicatorColor: Colors.white,
                    labelColor: Color.fromRGBO(166, 210, 204, 1),
                    unselectedLabelColor: Color.fromRGBO(203, 202, 205, 1),
                  ),
                  tabs: [
                    Text('News'),
                    Text('Contact'),
                    Text('Documents'),
                  ],
                  views: [
                    NewsComponent(),
                    ContactComponent(),
                    DocumentsComponent()
                  ],
                  onChange: (index) => print(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
