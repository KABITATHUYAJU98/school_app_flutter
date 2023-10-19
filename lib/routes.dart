import 'package:flutter/material.dart';
import 'package:hamro_vidyalaya/screens/login_screen/login_screen.dart';
import 'package:hamro_vidyalaya/screens/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  //All screens will be registered here - like manifest in android
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
};
