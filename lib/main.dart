import 'package:flutter/material.dart';
import 'package:welcome_flutter/logout.dart';
import 'package:welcome_flutter/routes.dart';
import 'package:welcome_flutter/signup.dart';
import 'home.dart';
import 'login.dart';
import 'welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      home: HomePage(),
      routes: {
        routes.home: (context) => HomePage(),
        routes.login: (context) => LoginApp(),
        routes.logout: (context) => LogoutPage(),
        routes.signup: (context) => SignupPage(),
        routes.welcome: (context) => Welcome(),
      },
    );
  }
}
