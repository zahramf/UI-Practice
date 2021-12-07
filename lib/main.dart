import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_app/screens/MainScreen.dart';
import 'package:sales_app/screens/landingScreen.dart';
import 'package:sales_app/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UI Practice",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        //Color(0xFF3EBACE),
        //COLOR_WHITE,
        accentColor: Color(0xFFD8ECF1),
        // COLOR_DARK_BLUE,
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        // textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
        //fontFamily: 'Montserrt'
      ),
      home: MainScreen(),
    );
  }
}
