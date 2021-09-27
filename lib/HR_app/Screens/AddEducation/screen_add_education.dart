import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/AddEducation/form.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class AddEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: app_bar(titilee: 'Add Education'),
      body: Stack(
        children: [
//---------------Background design-----------------------
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                ),
              ),
            ),
          ),
//--------------------body--------------------------
          Padding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 10),
            child: AddEducationForm(),
          ),
        ],
      ),
    );
  }
}