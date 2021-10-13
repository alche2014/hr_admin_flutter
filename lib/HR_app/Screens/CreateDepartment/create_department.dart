import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class CreateDepartment extends StatefulWidget {
  @override
  State<CreateDepartment> createState() => _CreateDepartmentState();
}

class _CreateDepartmentState extends State<CreateDepartment> {
  var _dropdownValue;
  TextEditingController _controller1 = new TextEditingController();
  // TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Create Department',true,'tune',true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //------------------textfields--------------------
                TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _controller1,
                    style: TextFieldTextStyle(),
                    decoration: TextFieldDecoration('Department Name')),
                SizedBox(height: 10),
                //------------------DropDown----------------
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey[300], width: 1)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _dropdownValue,
                      style: TextStyle(color: Colors.black),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      elevation: 0,
                      isExpanded: true,
                      hint: Text(
                        'Parent Department',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          _dropdownValue = newValue;
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
                ),
                // TextFormField(
                //     textInputAction: TextInputAction.next,
                //     controller: _controller2,
                //     style: TextFieldTextStyle(),
                //     decoration: TextFieldDecoration('Parent Department')),
                SizedBox(height: 10),
                TextFormField(
                  controller: _controller3,
                  style: TextFieldTextStyle(),
                  decoration: TextFieldDecoration('Added By'),
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
                  if (_controller1.text.isNotEmpty &&
                      // _controller2.text.isNotEmpty &&
                      _controller3.text.isNotEmpty) {
                    Navigator.of(context).pop();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Complete the Form.'),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  padding: EdgeInsets.symmetric(
                    vertical: 18,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Text(
                  'SAVE DEPARTMENT',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
