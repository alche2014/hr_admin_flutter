// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/About/screen_about.dart';
import 'package:hr_admin/HR_app/Screens/Dependent/screen_dependent.dart';
import 'package:hr_admin/HR_app/Screens/Education/Components/card.dart';
import 'package:hr_admin/HR_app/Screens/Education/Components/model.dart';
import 'package:hr_admin/HR_app/Screens/Education/screen_education.dart';
import 'package:hr_admin/HR_app/Screens/Employes/screen_employes.dart';
import 'package:hr_admin/HR_app/Screens/Experience/Components/card.dart';
import 'package:hr_admin/HR_app/Screens/Experience/Components/model.dart';
import 'package:hr_admin/HR_app/Screens/Experience/screen_experience.dart';
import 'package:hr_admin/HR_app/Screens/Notification/screen_notification.dart';
import 'package:hr_admin/HR_app/Screens/Personal_Information/screen_personal_info.dart';
import 'package:hr_admin/HR_app/Screens/Skills/screens.skills.dart';
import 'package:hr_admin/HR_app/Screens/Work_Information/screen_work_info.dart';
import 'package:hr_admin/HR_app/Screens/top_tile.dart';
import 'package:hr_admin/HR_app/Screens/Skills/chip_maker.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Profile extends StatelessWidget {
  var _next = Personal_Information();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        // leading: new IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //       // Navigator.pushReplacement(
        //       //     context, MaterialPageRoute(builder: (context) => Employee()));
        //     },
        //     icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notifications()));
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/forest.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      FormTopTile(trailing_edit: true, press: _next),
                    ],
                  ),
                ),
                Positioned(
                  top: 220,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 300),
//--------------------About----------------------
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Column(
                children: [
//------------Heading------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'About',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => About()));
                          }),
                    ],
                  ),
                  Text(
                    'Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content',
                  ),
                ],
              ),
            ),
//------------------Work Info----------------------------
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Column(
                children: [
//-----------Heading------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Work Info',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Work_Information()));
                          }),
                    ],
                  ),
//------------Body----------
                  Row(
                    children: [
                      Text(
                        'Department: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'App Design',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Report to: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Miss Areen Zahra',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Type: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'zfull Time',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Designation: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'UX & UI Designer',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Shift Schedule: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '9am - 6pm',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Role: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'UX Ui Designer',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Work Phone: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '0306512727',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Date Joining: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '02 Mar 2019',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '1 floor MM Alam Road Vouge Tower, lahore Pakistan',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
//----------------------Experience------------------------------
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
//-------------Heading-----------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Experience',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Experience()));
                          }),
                    ],
                  ),
//------------Body-------------
                  Flexible(
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: myExperience.length,
                        itemBuilder: (_, index) {
                          return ExperienceCard(model: myExperience[index]);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
//----------------------Education------------------------------
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
//-------------Heading-----------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Education',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Education()));
                          }),
                    ],
                  ),
//------------Body-----------
                  Flexible(
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: myEducation.length,
                        itemBuilder: (_, index) {
                          return EducationCard(model: myEducation[index]);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
//------------------Skills & Endoresments----------------------------
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
//-----------Heading------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Skills & Endoresments',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Skills()));
                          }),
                    ],
                  ),
//------------Body----------
                  Flexible(
                    child: GridView.count(
                      mainAxisSpacing: 0,
                      cacheExtent: 0,
                      childAspectRatio: 5,
                      crossAxisSpacing: 0,
                      padding: EdgeInsets.zero,
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: List.generate(
                        Chipmaker.choosed.length,
                        (index) {
                          return Text(Chipmaker.choosed[index]);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
//------------------Dependent----------------------------
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
//-----------Heading------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dependent',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Dependent()));
                          }),
                    ],
                  ),
//------------Body----------
                  Row(
                    children: [
                      Text(
                        'Name: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Lorem lpsum',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Relation: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Father',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Phone: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '03001111111',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
