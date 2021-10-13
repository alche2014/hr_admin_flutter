import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/AddEducation/screen_add_education.dart';
import 'package:hr_admin/HR_app/Screens/Education/Components/card.dart';
import 'package:hr_admin/HR_app/Screens/Education/Components/model.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//-----------------------Appbar--------------------
      appBar: app_bar(context,'Education',true,'notification',true),

      body: ListView.builder(
        itemCount: myEducation.length,
        itemBuilder: (_, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).scaffoldBackgroundColor,
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: EducationCard(
              model: myEducation[index],
            ),
          );
        },
      ),
      //-----------------Floating action button---------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddEducation()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: kPrimaryColor,
        //
      ),
    );
  }
}
