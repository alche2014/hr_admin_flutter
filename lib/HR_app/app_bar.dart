//.................custom appbar...............

import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';

class app_bar extends StatelessWidget implements PreferredSizeWidget {
  final String titilee;
  bool leading;
  String myicon;
  app_bar({this.titilee, this.leading, this.myicon});

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text(titilee),
        // backgroundColor: Colors.transparent,
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
          if (myicon != 'tune')
            IconButton(
              icon: Icon(
                Icons.notifications,
              ),
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => Notifications()));
              },
            ),
        ],
      ),
    );
  }
}
