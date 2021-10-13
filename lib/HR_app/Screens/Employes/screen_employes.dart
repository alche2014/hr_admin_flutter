import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CheckinHistory/screen_checkin_history.dart';
import 'package:hr_admin/HR_app/Screens/Employes/Components/employes_card.dart';
import 'package:hr_admin/HR_app/Screens/Profile/screen_profile.dart';
import 'package:hr_admin/HR_app/Screens/Requests/screen_requests.dart';
import 'package:hr_admin/HR_app/Screens/top_tile.dart';

// ignore: must_be_immutable
class Employee extends StatelessWidget {
  String text1 = 'Personal Information';
  String text2 = 'Attendence';
  String text3 = 'Requests';
  var next = Profile();
  var next2 = CheckinHistory();
  var next3 = Requests();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Employee',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
//------------------------TopTile-----------------------------------
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
                    FormTopTile(
                      trailing_edit: false,
                      press: null,
                    ),
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
//------------------------Cards-----------------------------------
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EmployesCard(text1, next),
                EmployesCard(text2, next2),
                EmployesCard(text3, next3),
              ],
            ),
          )
        ],
      ),
    );
  }
}
