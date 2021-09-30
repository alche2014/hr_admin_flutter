import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class CreateDepartment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(
        titilee: 'Create Department',
        myicon: 'tune',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //------------------textfields--------------------
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Department Name',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter a Valid Name';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Parent Department',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter a Valid Name';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Added By',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter a Valid Name';
                    } else {
                      return null;
                    }
                  },
                ),
              ],
            ),
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
