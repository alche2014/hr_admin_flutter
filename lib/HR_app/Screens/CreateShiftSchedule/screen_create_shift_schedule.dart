import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

enum LateMark { AsShiftStart, AfterGraceTime }

class CreateShiftSchedule extends StatefulWidget {
  @override
  State<CreateShiftSchedule> createState() => _CreateShiftScheduleState();
}

class _CreateShiftScheduleState extends State<CreateShiftSchedule> {
  var dropdownValue;
  var _iscchecked = false;
  var _gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: app_bar(
        titilee: 'Create Shift Schedule',
        myicon: 'tune',
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  //------------------textfields--------------------
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Shift Name',
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
                  //-----------------------DropDown-------------------
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        style: TextStyle(color: Colors.black),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        elevation: 0,
                        isExpanded: true,
                        hint: Text(
                          'Assign Department',
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
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
      //---------------------------checkbox-------------------
                      Flexible(
                        child: Theme(
                          data: ThemeData(
                            unselectedWidgetColor:
                                MediaQuery.of(context).platformBrightness ==
                                        Brightness.light
                                    ? kPrimaryColor
                                    : kContentColorLightTheme,
                          ),
                          child: CheckboxListTile(
                            contentPadding: EdgeInsets.only(left: 0),
                            // contentPadding: null,
                            title: Text(
                              'Grace Period',
                              style: TextStyle(color: Colors.grey),
                            ),
                            value: _iscchecked,
                            activeColor: kPrimaryColor,
                            onChanged: (bool value) {
                              setState(
                                () {
                                  _iscchecked = value;
                                },
                              );
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      ),
                      //------------------textfields--------------------
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Min',
                            hintStyle: TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
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
                      ),
                    ],
                  ),
      
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Mark as Late'),
                  ),
                  //-----------------Radio button-----------------------
                  Row(
                    children: <Widget>[
                      Row(
                        children: [
                          Radio<LateMark>(
                            activeColor: kPrimaryColor,
                            value: LateMark.AsShiftStart,
                            groupValue: _gender,
                            onChanged: (LateMark value) {
                              setState(
                                () {
                                  _gender = value;
                                },
                              );
                            },
                          ),
                          Text('As Shift Start'),
                        ],
                      ),
                      SizedBox(width: 20),
                      Row(
                        children: [
                          Radio<LateMark>(
                            activeColor: kPrimaryColor,
                            value: LateMark.AfterGraceTime,
                            groupValue: _gender,
                            onChanged: (LateMark value) {
                              setState(
                                () {
                                  _gender = value;
                                },
                              );
                            },
                          ),
                          Text(
                            'After grace time',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  //----------------------Date Picker---------------
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Check in'),
                              IconButton(
                                icon: Icon(Icons.today),
                                onPressed: () {
                                  showDatePicker(
                                      context: context,
                                      initialDate: DateTime(2005),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime.now());
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Check out'),
                              IconButton(
                                icon: Icon(Icons.today),
                                onPressed: () {
                                  showDatePicker(
                                      context: context,
                                      initialDate: DateTime(2005),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime.now());
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //----------------Save button--------------------------
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
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
                    'SAVE SCHEDULE',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
