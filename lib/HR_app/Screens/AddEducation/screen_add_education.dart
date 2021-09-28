import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/AddEducation/form.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class AddEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'Add Education'),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: AddEducationForm(),
      ),
    );
  }
}
