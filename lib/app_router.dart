import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moleculeapp/src/auth/loginPage.dart';
import 'package:moleculeapp/src/auth/signup.dart';
import 'package:moleculeapp/src/auth/welcomePage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => WelcomePage());
        break;

      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/register':
        return MaterialPageRoute(builder: (_) => SignUpPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
