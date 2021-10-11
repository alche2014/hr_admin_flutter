import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/About_app/screen_about_app.dart';
import 'package:hr_admin/HR_app/Screens/CompanyProfile/screen_company_profile.dart';
import 'package:hr_admin/HR_app/Screens/Departments/screen_departmennts.dart';
import 'package:hr_admin/HR_app/Screens/LeavePolicies/screen_leave_policies.dart';
import 'package:hr_admin/HR_app/Screens/Notification/screen_notification.dart';
import 'package:hr_admin/HR_app/Screens/OfficeLocation/screen_office_location.dart';
import 'package:hr_admin/HR_app/Screens/Privacy_app%20copy/screen_Privacy_app.dart';
import 'package:hr_admin/HR_app/Screens/ShiftSchedual/screen_shift_schedule.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: ClipRRect(
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                        image: AssetImage('assets/images/user1.png'),
                        width: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'User Name',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            // color: Colors.white
                          ),
                        ),
                        Text(
                          'Trust your feelings, be a good human beings',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            //------------------Switch----------------
            Container(
              margin: EdgeInsets.symmetric(horizontal:  40 , vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.dark_mode,
                        color: kPrimaryColor,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Dark mode',
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                    ],
                  ),
                  Switch(
                    value: _isSwitched,
                    onChanged: (value) {
                      setState(() {
                        _isSwitched = value;
                      });
                    },
                    activeTrackColor: kPrimaryColor.withOpacity(0.6),
                    activeColor: kPrimaryColor,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey[200],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: ExpansionTile(
                childrenPadding:
                    EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                title: Text(
                  'Organization',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                leading: Icon(
                  Icons.lock,
                  color: kPrimaryColor,
                ),
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Company_Profile()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 15,
                            color: kPrimaryColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Company Profile',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Departments()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 15,
                            color: kPrimaryColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Department',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OfficeLocation()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 15,
                            color: kPrimaryColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Office Locations',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ShiftSchedule()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 15,
                            color: kPrimaryColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Shift Schedule',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LeavePolicies()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 15,
                            color: kPrimaryColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Leave Policy',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: kPrimaryColor,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Notifications',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 16),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PrivacyApp()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: kPrimaryColor,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Privacy',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 16),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutApp()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.error,
                        color: kPrimaryColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'About',
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.logout,
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.light
                      ? Colors.black
                      : Colors.white),
              label: Text(
                'Log Out',
                style: TextStyle(
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? Colors.black
                        : Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
