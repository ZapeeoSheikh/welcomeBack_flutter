import 'package:flutter/material.dart';
import 'package:welcome_flutter/routes.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Signout Page'),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('img/logout.png'),
                Text(
                  "This is my Logout Page!\n Thanks for using this App",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 27.0,
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, routes.home);
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
