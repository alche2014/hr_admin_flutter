import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CreateLeavePolicy/screen_create_leave_policy.dart';
import 'package:hr_admin/HR_app/Screens/LeavePolicies/Components/card.dart';
import 'package:hr_admin/HR_app/Screens/LeavePolicies/Components/model.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class LeavePolicies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Leave Policies',true,'tune',true),
      body: ListView.builder(
        itemCount: myPolicies.length,
        itemBuilder: (_, index) {
          return PolicyCard(
            model: myPolicies[index],
          );
        },
      ),
      //-----------------Floating action button---------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CreateLeavePolicy()));
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
