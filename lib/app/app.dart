import 'package:depi/presentation/resources/routes_manager.dart';
import 'package:depi/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal();

  static final MyApp _instance = MyApp._internal();

  factory MyApp() => _instance;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(440, 902),
      child: MaterialApp(
        theme: getApplicationTheme(),
        initialRoute: Routes.splashRoute,
        onGenerateRoute: RouteGenerator.getRoute,
      ),
    );
  }
}