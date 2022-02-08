import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(
              color: Color.fromRGBO(93, 90, 97, 1),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          Container(
            child: CircleAvatar(
                backgroundColor: Color.fromRGBO(210, 100, 102, 0.5),
                radius: 50.0,
                child: ClipOval(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    radius: 25.0,
                  ),
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color.fromRGBO(240, 39, 70, 1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(210, 100, 102, 1).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Account',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                      color: Color.fromRGBO(93, 90, 97, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Color.fromRGBO(93, 90, 97, 1),
                  size: 15,
                ),
              ),
            ),
            Divider(
              indent: 25,
              endIndent: 25,
            ), //
            ListTile(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Change Password",
                  style: TextStyle(
                      color: Color.fromRGBO(93, 90, 97, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Color.fromRGBO(93, 90, 97, 1),
                  size: 15,
                ),
              ),
            ),
            Divider(
              indent: 25,
              endIndent: 25,
            ),
            ListTile(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Language",
                  style: TextStyle(
                      color: Color.fromRGBO(93, 90, 97, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              trailing: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Color.fromRGBO(93, 90, 97, 1),
                  size: 15,
                ),
              ),
            ),
            Divider(
              indent: 25,
              endIndent: 25,
            ),

            ///

            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color.fromRGBO(240, 39, 70, 1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(210, 100, 102, 1).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Notifications',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "App allow notification",
                    style: TextStyle(
                        color: Color.fromRGBO(93, 90, 97, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                trailing: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Switch(
                      activeColor: Color.fromRGBO(166, 210, 204, 1),
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                          // child: FaIcon(
                          //   FontAwesomeIcons.chevronRight,
                          //   color: Color.fromRGBO(93, 90, 97, 1),
                          //   size: 15,
                          // ),
                        }))),
            Divider(
              indent: 25,
              endIndent: 25,
            ),

            ///
          ],
        ),
      ),
    );
  }
}
