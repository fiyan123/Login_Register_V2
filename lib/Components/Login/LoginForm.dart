
import 'package:flutter/material.dart';
import 'package:flutter_app/Components/custom_surfix_icon.dart';
import 'package:flutter_app/Components/default_button_custome_color.dart';
import 'package:flutter_app/Screens/Home/HomeScreens.dart';
import 'package:flutter_app/Screens/Register/Registrasi.dart';
import 'package:flutter_app/size_config.dart';
import 'package:flutter_app/utils/constants.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}


// State
class _SignInForm extends State<SignInform>{

  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  String? kEmailNullError;
  bool? remeber = false;
  bool passToggle = true;

  final txtEmail = TextEditingController();
  final txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildEmail(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          // Lupa Password
          Row(
            children: [
              Checkbox(value: remeber,
              onChanged: (value) {
                  setState(() {
                    remeber = value;
                  });
                }
              ),
              Text("Lanjutkan Masuk", style: TextStyle(fontWeight: FontWeight.bold)),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Lupa Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          DefaultButtonCustomeColor(
            color: kColorBlue,
            text: "LOGIN",
            press: () {
              Navigator.pushNamed(context, HomeScreens.routeName);
            },
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RegisterScreen.routeName);
            },
            child: Text(
            "Belum Punya Akun ? Daftar Disini",
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
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
        hintText: 'Masukkan Email Anda',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: ((value) => kEmailNullError),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      // Keyboard Untuk Password
      controller: txtPassword,
      obscureText: passToggle,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukkan Password Anda',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: InkWell (
          onTap: () {
              setState(() {
                passToggle = !passToggle;
              });
            },
            child: Icon(passToggle ? Icons.visibility : Icons.visibility_off_outlined),
        ),
      ),
       validator: (value) {
        if (value!.isEmpty) {
          return "Enter Your Password";
        }
        else if(txtPassword.text.length < 6) {
          return "Password Length Should be more than 6 characters";
        }
      },
    );
  }
}