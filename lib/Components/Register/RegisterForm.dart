import 'package:flutter/material.dart';
import 'package:flutter_app/Components/custom_surfix_icon.dart';
import 'package:flutter_app/Components/default_button_custome_color.dart';
import 'package:flutter_app/Screens/Login/LoginScreens.dart';
import 'package:flutter_app/Screens/Register/Registrasi.dart';
import 'package:flutter_app/size_config.dart';
import 'package:flutter_app/utils/constants.dart';

class SignUpform extends StatefulWidget {
  @override
  _SignUpForm createState() => _SignUpForm();
}

// State
class _SignUpForm extends State<SignUpform> {
  final _formKey = GlobalKey<FormState>();
  String? namalengkap;
  String? email;
  String? password;

  TextEditingController txtEmail = TextEditingController(),
      txtPassword = TextEditingController(),
      txtNamaLengkap = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildNamaLengkap(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmail(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButtonCustomeColor(
            color: kColorBlue,
            text: "REGISTER",
            press: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
            child: Text(
              "Already Account ? Login this",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  TextFormField buildNamaLengkap() {
    return TextFormField(
      controller: txtNamaLengkap,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Name',
        hintText: 'Enter Your Name',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kSecondaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.emailAddress,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter Your Email',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kSecondaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      // Keyboard Untuk Password
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Your Password',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kSecondaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }
}
