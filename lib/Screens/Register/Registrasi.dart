import 'package:flutter/material.dart';
import 'package:flutter_app/Components/Register/RegisterComponent.dart';
import 'package:flutter_app/size_config.dart';

class RegisterScreen extends StatelessWidget {

  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: RegisterComponent(),
    );
  }
}