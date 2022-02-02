import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_template/src/page/launcher.dart';
import 'package:flutter_project_template/src/utils/index.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'component/routes/routes.dart';

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const MyApp({Key? key, this.savedThemeMode}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: AppTheme.light,
      dark: AppTheme.dark,
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        theme: theme,
        darkTheme: darkTheme,
        builder: (context, widget) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            maxWidth: 2460,
            minWidth: 480,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(480, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
            background: Container(color: Color(0xFFF5F5F5))),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: routes,
      ),
    );
  }
}
