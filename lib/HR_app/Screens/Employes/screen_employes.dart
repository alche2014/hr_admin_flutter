import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Employes/Components/employes_card.dart';
import 'package:hr_admin/HR_app/Screens/top_tile.dart';

class Employes extends StatelessWidget {
  String text1 = 'Personal Information';
  String text2 = 'Attendence';
  String text3 = 'Requests';
  var next; //= new PersonalInformation1();
  var next2; // = new Experience1();

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
                EmployesCard(text2, next),
                EmployesCard(text3, next2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
