import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CreateShiftSchedule/screen_create_shift_schedule.dart';
import 'package:hr_admin/HR_app/Screens/ShiftSchedual/Components/card.dart';
import 'package:hr_admin/HR_app/Screens/ShiftSchedual/Components/model.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class ShiftSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Shift Schedule',true,'tune',true),
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
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CreateShiftSchedule()));
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
