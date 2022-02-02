import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/component/responsive/responsive.dart';
import 'package:flutter_project_template/src/component/scaffold/ScaffoldWidget.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: Text(''),
      child: Stack(children: [
        Responsive().orientation(context)
            ? Column(
                children: [
                  _image(3),
                  _flexContainer(4),
                ],
              )
            : Row(
                children: [
                  _image(2),
                  _flexContainer(1),
                ],
              ),
        Responsive().orientation(context)
            ? Column(
                children: [_flexContainer(1), _username(1), _userdetail(4)],
              )
            : Row(
                children: [_username(1), _userdetail(1)],
              ),
      ]),
    );
  }
}

_image(int flex) {
  return Flexible(
    flex: flex,
    child: Container(
      child: Image.asset(
        'assets/images/bg4.jpg',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    ),
  );
}

_userdetail(int flex) {
  return Expanded(
    flex: flex,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(80),
          topRight: const Radius.circular(40),
        ),
        color: Colors.white,
      ),
    ),
  );
}

_username(int flex) {
  return Expanded(
    flex: flex,
    child: Container(
      padding: EdgeInsets.only(left: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Ukrist Ongsagngkoon",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            "ukristkrit@hotmail.com",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

_flexContainer(int flex) {
  return Expanded(flex: flex, child: Container());
}
