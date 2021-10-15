import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Announcemets/screen_announcement.dart';
import 'package:hr_admin/HR_app/Screens/DashBoard/dashboard.dart';
import 'package:hr_admin/HR_app/Screens/Employee/screen_employee.dart';
import 'package:hr_admin/HR_app/Screens/Home1/home1.dart';
import 'package:hr_admin/HR_app/Screens/Messages/screen_messages.dart';
import 'package:hr_admin/HR_app/Screens/Settings/screen_settings.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentindex = 0;

  final tabs = [
    Center(child: DashBoard()),
    Center(child: Employes1()),
    Center(child: Announcements()),
    Center(child: Messages()),
    Center(child: Settings()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.red[800],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'home',
            // backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Performance',
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.campaign),
            label: 'Announcement',
            // backgroundColor: Colors.blue,
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Messages',
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
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
