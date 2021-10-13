import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Personal_Information/form.dart';
import 'package:hr_admin/HR_app/app_bar.dart';

// ignore: camel_case_types
class Personal_Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Personal Information',true,'notification',true),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Personal_Info_Form()),
      ),
    );
  }
}
