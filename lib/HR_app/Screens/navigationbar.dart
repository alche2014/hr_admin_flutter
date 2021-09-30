import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Announcemets/screen_announcement.dart';
import 'package:hr_admin/HR_app/Screens/CompanyInformation/company_information.dart';
import 'package:hr_admin/HR_app/Screens/CompanyProfile/screen_company_profile.dart';
import 'package:hr_admin/HR_app/Screens/CreateAnnouncement/screen_create_announcement.dart';
import 'package:hr_admin/HR_app/Screens/CreateDepartment/create_department.dart';
import 'package:hr_admin/HR_app/Screens/CreateShiftSchedule/screen_create_shift_schedule.dart';
import 'package:hr_admin/HR_app/Screens/Departments/screen_departmennts.dart';
import 'package:hr_admin/HR_app/Screens/Employes/screen_employes.dart';
import 'package:hr_admin/HR_app/Screens/Home1/home1.dart';
import 'package:hr_admin/HR_app/Screens/OfficeLocation/screen_office_location.dart';
import 'package:hr_admin/HR_app/Screens/Requests/screen_requests.dart';
import 'package:hr_admin/HR_app/Screens/ShiftSchedual/screen_shift_schedule.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentindex = 0;

  final tabs = [
    Center(child: Home1()),
    Center(child: ShiftSchedule()),
    Center(child: CreateAnnouncement()),
    Center(child: Requests()),
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
