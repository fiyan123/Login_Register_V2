import 'package:flutter/material.dart';
import 'package:flutter_app/Components/Home/HomeComponent.dart';
import 'package:flutter_app/size_config.dart';
import 'package:flutter_app/utils/constants.dart';

class HomeScreens extends StatelessWidget {

  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: HomeComponent(),
    );
  }
}