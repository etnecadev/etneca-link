import 'package:flutter/material.dart';

class Responsive {
  orientation(BuildContext context) {
    Orientation currentOrientation = MediaQuery.of(context).orientation;
    if (currentOrientation == Orientation.portrait) {
      return true;
    } else {
      return false;
    }
  }

  height(double value, BuildContext context) {
    return MediaQuery.of(context).size.height / value;
  }

  width(double value, BuildContext context) {
    return MediaQuery.of(context).size.width / value;
  }
}
