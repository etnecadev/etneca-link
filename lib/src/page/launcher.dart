import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/component/news.dart';
import 'package:flutter_project_template/src/page/index.dart';


class LauncherPage extends StatefulWidget {
   static const routeName = '/';
  @override
  _LauncherPageState createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {

  int _selectedIndex = 0;
    final List<Widget> _pageWidget = <Widget>[
        const MapPage(),
        // const NewsComponent(),
        const SecondPage(),
        const UserPage(),
    ];

 final List<BottomNavigationBarItem> _menuBar
    =  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'About',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Profile',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Contact',
        ),
       
    ];

     void _onItemTapped(int index) {
        setState(() {
            _selectedIndex = index;
        });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: _pageWidget.elementAt(_selectedIndex),
            bottomNavigationBar: BottomNavigationBar(
                items: _menuBar,
                currentIndex: _selectedIndex,
                selectedItemColor: Theme
                    .of(context)
                    .primaryColor,
                unselectedItemColor: Colors.grey,
                onTap: _onItemTapped,
            ),
        );
  }
}