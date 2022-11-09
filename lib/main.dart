import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Login/LoginScreens.dart';
import 'package:flutter_app/routes.dart';
import 'package:flutter_app/theme.dart';

void main() async {
  runApp(
    MaterialApp(
      title: "Penilaian Siswa",
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
    )
  );
}