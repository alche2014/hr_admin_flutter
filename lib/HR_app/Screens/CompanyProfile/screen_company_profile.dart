import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CompanyProfile/form.dart';
import 'package:hr_admin/HR_app/app_bar.dart';

class Company_Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Company Profile',true,'notification',true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Company_Profile_Form(),
        ),
      ),
    );
  }
}
