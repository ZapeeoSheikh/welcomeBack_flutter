import 'package:flutter/material.dart';
import 'package:welcome_flutter/login.dart';
import 'routes.dart';
import 'signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Welcome Flutter'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.asset('img/home.png'),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "This is my Home Page!",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 27.0,
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    FlutterLogo(size: 200.0),
                  ],
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, routes.home);
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 22.0,
                      letterSpacing: 2,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, routes.login);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 22.0,
                      letterSpacing: 2,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, routes.signup);
                  },
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      fontSize: 22.0,
                      letterSpacing: 2,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, routes.logout);
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 22.0,
                      letterSpacing: 2,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(
                      'Developed by Muhammad Rameez',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
