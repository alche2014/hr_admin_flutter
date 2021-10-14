import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Notification/screen_notification.dart';
import 'package:hr_admin/HR_app/Screens/Personal_Information/form.dart';
import 'package:hr_admin/HR_app/Screens/Profile/screen_profile.dart';
import 'package:hr_admin/HR_app/constants.dart';

// ignore: camel_case_types
class Personal_Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Personal Information'),
        // leading: new IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //       // Navigator.pushReplacement(
        //       //     context, MaterialPageRoute(builder: (context) => Profile()));
        //     },
            // icon: Icon(Icons.arrow_back)),
        actions: [
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
      ),
      // appBar: app_bar(context,'Personal Information',true,'notification',true),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Personal_Info_Form()),
      ),
    );
  }
}
