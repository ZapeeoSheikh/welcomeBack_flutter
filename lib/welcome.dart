import 'package:flutter/material.dart';
import 'routes.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(  
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Welcome Rameez !'),
          ),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('img/welcome.png'),
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: Text(
                  "You are very welcome to my first ever application.\n\nThis is Flutter 2.10 and I am  a Flutter Enthusiast",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                    fontSize: 20.0,
                  ),
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
    );
  }
}
