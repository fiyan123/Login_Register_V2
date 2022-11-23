import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Home/HomeScreens.dart';
import 'package:flutter_app/Screens/Login/LoginScreens.dart';
import 'package:flutter_app/Screens/Register/Registrasi.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName:(context) => RegisterScreen(),
  HomeScreens.routeName:(context) => HomeScreens()
};