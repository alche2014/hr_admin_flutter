import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'About'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Text(
                'Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content Here is your about content',
              ),
            ),
            SizedBox(height: 30),
            //----------------Save button--------------------------
            FractionallySizedBox(
              widthFactor: 1,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => Signin_scaffold()));
                },
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Text(
                  'Save',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
