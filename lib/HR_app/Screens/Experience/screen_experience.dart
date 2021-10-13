import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/AddExperience/screen_add_experience.dart';
import 'package:hr_admin/HR_app/Screens/Experience/Components/card.dart';
import 'package:hr_admin/HR_app/Screens/Experience/Components/model.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//-----------------------Appbar--------------------
      appBar: app_bar(context,'Experience',true,'notification',true),

      body: ListView.builder(
        itemCount: myExperience.length,
        itemBuilder: (_, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).scaffoldBackgroundColor,
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: ExperienceCard(
              model: myExperience[index],
            ),
          );
        },
      ),
      //-----------------Floating action button---------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddExperience()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
