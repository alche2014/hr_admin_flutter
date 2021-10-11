import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Home1/cards.dart';
import 'package:hr_admin/HR_app/Screens/Home1/charts.dart';
import 'package:hr_admin/HR_app/Screens/Notification/screen_notification.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  var dropdownValue;
  var size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              //----------------App Bar-------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(color: kPrimaryColor, fontSize: 18),
                      ),
                      Text(
                        'User Name',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  IconButton(
                      icon: Icon(Icons.notifications),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Notifications()));
                      }),
                ],
              ),
              SizedBox(height: 30),

              //-----------------------Card1------------------------
              Row(
                children: [
                  Card1_Home1(
                    text1: '175',
                    text2: 'Total Employee',
                    color: Color(0xffFA5A7D),
                  ),
                  SizedBox(width: 8),
                  Card1_Home1(
                    text1: '150',
                    text2: 'Total Present',
                    color: Color(0xff8676FE),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Card1_Home1(
                      text1: '12',
                      text2: 'Total Departments',
                      color: Color(0xffFF7443)),
                  SizedBox(width: 8),
                  Card1_Home1(
                    text1: '63',
                    text2: 'Unread Messages',
                    color: Color(0xff1BB1B1),
                  ),
                ],
              ),
              SizedBox(height: 20),
              //------------------Linear chart--------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Attendence Percentge',
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      style: TextStyle(color: Colors.black),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      elevation: 0,
                      // isExpanded: true,
                      hint: Text(
                        'Month',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>['1', '2'].map<DropdownMenuItem<String>>(
                        (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
              Container(
                height: 250,
                child: LineChartWidget(), //   class lineChart
              ),
              SizedBox(height: 20),
              //----------------Pie Chart-----------------------
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Gender Demograph',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 2, child: PieChartWidget()), // Class PieChart
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.accessibility,
                                color: Color(0xff4880FF),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Male',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    '40 %',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Icon(
                                Icons.pregnant_woman_rounded,
                                color: Color(0xffEB5EBD),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Female',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    '60 %',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
//-----------------Floating action button---------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
