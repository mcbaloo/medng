import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medng/screens/epidermic.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Epidermic())));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              colorBlendMode: BlendMode.softLight,
              image: AssetImage("assets/images/Logo-Mark.png"),
            ),
            Text("covid",
                style: TextStyle(
                  color: Color(0xff414D55),
                  fontFamily: 'Rubik',
                  fontSize: MediaQuery.of(context).size.height / 15,
                )),
            Text(
              "-19",
              style: (TextStyle(
                  fontFamily: 'Rubik',
                  color: Color(0xff2662F0),
                  fontSize: MediaQuery.of(context).size.height / 15)),
            ),
          ],
        )));
  }
}
