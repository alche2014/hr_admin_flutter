import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Notification/screen_notification.dart';
import 'package:hr_admin/HR_app/Screens/Settings/body.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: MediaQuery.of(context).platformBrightness == Brightness.light
              ? Colors.black
              : Colors.white,
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: MediaQuery.of(context).platformBrightness == Brightness.light
                ? Colors.black
                : Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
            icon: Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
