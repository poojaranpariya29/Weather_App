import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:weather_app/provider/HomeProvider.dart';
import 'package:weather_app/view/HomePage.dart';
import 'package:weather_app/view/SplashPage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => HomeProvider(),
    child: Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => SplashPage(),
            'Home': (context) => HomePage(),
          },
        );
      },
    ),
  ));
}
