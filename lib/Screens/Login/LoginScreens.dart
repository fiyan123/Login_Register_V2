import 'package:flutter/material.dart';
import 'package:flutter_app/Components/Login/LoginComponent.dart';
import 'package:flutter_app/size_config.dart';
import 'package:flutter_app/utils/constants.dart';

class LoginScreen extends StatelessWidget {

  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: LoginComponent(),
    );
  }
}