import 'package:flutter/material.dart';
import 'package:flutter_app/Components/Login/LoginForm.dart';
import 'package:flutter_app/Components/Register/RegisterForm.dart';
import 'package:flutter_app/size_config.dart';
import 'package:flutter_app/utils/constants.dart';
import 'package:simple_shadow/simple_shadow.dart';

class RegisterComponent extends StatefulWidget {

  @override
  _RegisterComponet createState() => _RegisterComponet();
}

class _RegisterComponet extends State<RegisterComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                 SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SimpleShadow(
                  child: Image.asset(
                    "assets/images/graduation.png",
                    height: 150,
                    width: 202,
                  ),
                  opacity: 0.5,
                  color: kSecondaryColor,
                  offset: Offset(5, 5),
                  sigma: 2,
                ),
                // Padding(
                //   padding: EdgeInsets.only(left: 10),
                //   child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           "REGISTRASI",
                //           style: mTitleStyle,
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                SignUpform()
              ],
            ),
          ),
        ),
      ),
    );
  }
}