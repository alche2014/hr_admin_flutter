//.................custom appbar...............

import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Notification/screen_notification.dart';
import 'package:hr_admin/HR_app/constants.dart';



  AppBar app_bar(
    BuildContext context,
    final String titilee,
    bool leading,
    String myicon,
    bool barcolor,
  ) {
    return AppBar(
      elevation: 0,
      title: Text(titilee),
      // backgroundColor: Colors.blue,
      backgroundColor: barcolor == false ? Colors.transparent : kPrimaryColor,
      automaticallyImplyLeading: leading ?? true,
      actions: <Widget>[
        if (myicon == 'tune')
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => Notifications()));
            },
          ),
        if (myicon == 'notification')
          IconButton(
            icon: Icon(
              Icons.notifications,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
          ),
      ],
    );
  }

