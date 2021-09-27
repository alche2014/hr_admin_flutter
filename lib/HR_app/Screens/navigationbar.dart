import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/About/screen_about.dart';
import 'package:hr_admin/HR_app/Screens/AddEducation/screen_add_education.dart';
import 'package:hr_admin/HR_app/Screens/AddExperience/screen_add_experience.dart';
import 'package:hr_admin/HR_app/Screens/CompanyInformation/company_information.dart';
import 'package:hr_admin/HR_app/Screens/CreateEmployee/screen_create_employee.dart';
import 'package:hr_admin/HR_app/Screens/Dependent/screen_dependent.dart';
import 'package:hr_admin/HR_app/Screens/Education/screen_education.dart';
import 'package:hr_admin/HR_app/Screens/Employee/screen_employee.dart';
import 'package:hr_admin/HR_app/Screens/Experience/screen_experience.dart';
import 'package:hr_admin/HR_app/Screens/Home1/home1.dart';
import 'package:hr_admin/HR_app/Screens/Personal_Information/screen_personal_info.dart';
import 'package:hr_admin/HR_app/Screens/Profile/screen_profile.dart';
import 'package:hr_admin/HR_app/Screens/Skills/screens.skills.dart';
import 'package:hr_admin/HR_app/Screens/Work_Information/screen_work_info.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentindex = 0;

  final tabs = [
    Center(child: Profile()),
    Center(child: Employee()),
    Center(child: Personal_Information()),
    Center(child: Skills()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.red[800],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('home'),
            // backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text('Performance'),
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1),
            title: Text('Requests'),
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text('More'),
            // backgroundColor: Colors.blue,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
