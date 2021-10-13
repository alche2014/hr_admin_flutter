import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Dependent/form.dart';
import 'package:hr_admin/HR_app/app_bar.dart';

class Dependent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Dependent',true,'notification',true),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.89,
          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: DependentForm(),
        ),
      ),
    );
  }
}
