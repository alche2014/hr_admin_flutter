import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CreateEmployee/form.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class CreateEmployee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'Create Employee'),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: CreateEmployeeForm()),
      ),
    );
  }
}
