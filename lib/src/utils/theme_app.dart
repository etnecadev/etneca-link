import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // button color
  static const Color _buttonRedColor = Color(0xFFEB5757);
  static const Color _buttonBlackColor = Color(0xFF3A424A);
  static const Color _buttonBlueColor = Color(0xFF0C539A);
  static const Color _buttonBlueShadeColor = Color(0xFF2D9CDB);
  static const Color _buttonGreenColor = Color(0xFF26A570);

  //text color
  static const Color _textYellowColor = Color(0xFFFFC200);
  static const Color _textWhiteColor = Color(0xFFFFFFFF);

  //area color
  static const Color _areaGreyColor = Color(0xFF7D848B);
  static const Color _areaBorderColor = Color(0xFFE0E0E0);

  // icon color
  static const Color _iconColorWhite = Colors.white;

  //  main color
  static const Color _primaryColor = Color(0xFF3A424A);
  static const Color _shadeColor = Color(0xFF454F59);
  static const Color _secondColor = Color(0xFFD6C960);
  static const Color _whiteColor = Color(0xFFF5F5F5);
  static const Color _blackColor = Color(0xFF060606);
  static const Color _greyColor = Color(0xFFA4A4AC);
  static const Color _transparent = Colors.transparent;

  static final ThemeData primaryTheme = ThemeData(
      fontFamily: 'Roboto',
      textTheme: TextTheme(
          display1: TextStyle(
              color: _textWhiteColor,
              fontSize: 22,
              fontWeight: FontWeight.w500),
          subhead: TextStyle(
              color: _textWhiteColor,
              fontSize: 22,
              fontWeight: FontWeight.w700),
          display2: TextStyle(
              color: _textWhiteColor,
              fontSize: 18,
              fontWeight: FontWeight.w400),
          display3: TextStyle(
              color: _textWhiteColor,
              fontSize: 18,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w400),
          display4: TextStyle(
              color: _textYellowColor,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          headline: TextStyle(

              /// Tab Inbox
              color: _textWhiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          caption: TextStyle(
              color: _shadeColor, fontSize: 16, fontWeight: FontWeight.w300),
          button: TextStyle(
              color: _textWhiteColor,
              fontSize: 14,
              fontWeight: FontWeight.w400)),
      primaryColorDark: _primaryColor,
      primaryColorLight: _shadeColor,
      accentColor: _areaGreyColor,
      scaffoldBackgroundColor: _primaryColor,
      backgroundColor: _primaryColor,
      appBarTheme: AppBarTheme(
        color: _primaryColor,
        iconTheme: IconThemeData(
          color: _iconColorWhite,
        ),
      ),
      cardColor: _shadeColor,
      colorScheme: ColorScheme.light(
        primary: _shadeColor,
        primaryVariant: _shadeColor,
        secondary: _whiteColor,
        onPrimary: _whiteColor,
      ),
      primaryColor: _shadeColor,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      buttonTheme: ButtonThemeData(buttonColor: _primaryColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            onPrimary: _whiteColor,
            primary: _buttonBlueColor,
            textStyle: TextStyle(
              color: _whiteColor,
              fontSize: 14,
            )),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            primary: _buttonRedColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
            textStyle: TextStyle(
              color: _buttonRedColor,
              fontSize: 14,
            )),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _primaryColor,
      ));
}
