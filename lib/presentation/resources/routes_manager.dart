import 'package:depi/presentation/forget_password_screen/forget_password_view.dart';
import 'package:depi/presentation/login_screen/login_view.dart';
import 'package:depi/presentation/register_screen/register_view.dart';
import 'package:depi/presentation/resources/strings_manager.dart';
import 'package:depi/presentation/splash_screen/splash_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashView(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => LoginView(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RegisterView(),
        );
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ForgetPasswordView(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(Strings.noRouteFound),
        ),
        body:  Center(
          child:Text(Strings.noRouteFound),
        ),
      ),
    );
  }
}
