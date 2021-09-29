import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/ShiftSchedual/Components/card.dart';
import 'package:hr_admin/HR_app/Screens/ShiftSchedual/Components/model.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class ShiftSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(
        titilee: 'Shift Schedule',
        myicon: 'tune',
      ),
      body: ListView.builder(
        itemCount: myshiftschedule.length,
        itemBuilder: (_, index) {
          return ShiftScheduleCard(
            model: myshiftschedule[index],
          );
        },
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
