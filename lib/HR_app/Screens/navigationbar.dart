import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Employee/screen_employee.dart';
import 'package:hr_admin/HR_app/Screens/Employes/screen_employes.dart';
import 'package:hr_admin/HR_app/Screens/ForgetPassword/screen_forget_password.dart';
import 'package:hr_admin/HR_app/Screens/Home1/home1.dart';
import 'package:hr_admin/HR_app/Screens/Messages/screen_messages.dart';
import 'package:hr_admin/HR_app/Screens/RecoveryCode/screen_recovery_code.dart';
import 'package:hr_admin/HR_app/Screens/Settings/screen_settings.dart';
import 'package:hr_admin/HR_app/Screens/ShiftSchedual/screen_shift_schedule.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentindex = 0;

  final tabs = [
    Center(child: Home1()),
    Center(child: Employes1()),
    Center(child: RecoveryCode()),
    Center(child: Messages()),
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
