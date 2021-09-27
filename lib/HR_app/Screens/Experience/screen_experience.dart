import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Employee/components/model.dart';
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
      extendBodyBehindAppBar: true,
//-----------------------Appbar--------------------
      appBar: app_bar(titilee: 'Experience'),

      body: Stack(
        children: [
//--------------------background Design--------------
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
          //-------------------Body-----------------------
          ListView.builder(
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
        ],
      ),
      //-----------------Floating action button---------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
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
