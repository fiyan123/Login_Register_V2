import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;
  bool valNotify4 = false;
  bool valNotify5 = false;

  onChangeFunction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      valNotify3 = newValue3;
    });
  }

  onChangeFunction4(bool newValue4) {
    setState(() {
      valNotify4 = newValue4;
    });
  }

  onChangeFunction5(bool newValue5) {
    setState(() {
      valNotify5 = newValue5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: Text('Setting Page',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.person, color: Colors.grey),
                SizedBox(width: 10),
                Text("Account setting",
                    style: GoogleFonts.montserrat(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            Divider(height: 20, thickness: 1),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.lock_person_outlined, color: Colors.grey),
                  buildAccountOption(context, "Change Password"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.person_outline, color: Colors.grey),
                  buildAccountOption(context, "Change Profile"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.mediation, color: Colors.grey),
                      buildAccountOption(context, "Social"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.security_outlined, color: Colors.grey),
                  buildAccountOption(context, "Privacy and Security"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.airline_seat_legroom_normal, color: Colors.grey),
                  buildAccountOption(context, "Legal account"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.volume_up, color: Colors.grey),
                SizedBox(width: 10),
                Text("Application setting",
                    style: GoogleFonts.montserrat(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            Divider(height: 20, thickness: 1),
            SizedBox(height: 10),
            buildNotificationOption(
                "Touch sound", valNotify1, onChangeFunction1),
            buildNotificationOption(
                "Charging sound", valNotify2, onChangeFunction2),
            buildNotificationOption(
                "Keyboard sound", valNotify3, onChangeFunction3),
            buildNotificationOption(
                "Languange", valNotify4, onChangeFunction4),
            buildNotificationOption(
                "Theme", valNotify5, onChangeFunction5),
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600])),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.blue,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option"),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
