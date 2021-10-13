import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/AddExperience/form.dart';
import 'package:hr_admin/HR_app/app_bar.dart';

class AddExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Add Experience',true,'notification',true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: AddExpressionForm(),
        ),
      ),
    );
  }
}
