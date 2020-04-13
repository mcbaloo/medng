import 'package:flutter/material.dart';
import 'package:medng/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medng',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xffF1F5F8), accentColor: Color(0xff2662F0)),
      home: SplashScreen(),
    );
  }
}
