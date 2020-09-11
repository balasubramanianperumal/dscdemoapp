import 'package:flutter/material.dart';

import 'Body.dart';
import 'package:demo_dsc_test/aboutUs.dart';
import 'package:demo_dsc_test/Home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily:'varela',
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => Body(),
        About.id:(context) => About(),
        Home.id:(context) => Home(),
      },
    );
  }
}

//keytool -storepasswd -new demodscapp -keytool key.jks
//key -keypasswd -alias jks -new demodscapp -key key.jks