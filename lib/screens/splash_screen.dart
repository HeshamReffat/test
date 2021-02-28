import 'package:flutter/material.dart';
import 'package:mat3am_app/screens/tips/get_started.dart';
import 'package:mat3am_app/shared/components.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new GetStarted(),
      title: new Text(
        'Welcome In SplashScreen',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      backgroundColor: primaryColor,
      loaderColor: Colors.white,
    );
  }
}
