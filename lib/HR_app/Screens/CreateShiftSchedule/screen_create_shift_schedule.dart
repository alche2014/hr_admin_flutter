import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:intl/intl.dart';

enum LateMark { AsShiftStart, AfterGraceTime }

class CreateShiftSchedule extends StatefulWidget {
  @override
  State<CreateShiftSchedule> createState() => _CreateShiftScheduleState();
}

class _CreateShiftScheduleState extends State<CreateShiftSchedule> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  var _dropdownValue;
  var _iscchecked = false;
  var _latemark;
  var _time1;
  var _time2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: app_bar(context,'Create Shift Schedule',true,'Tune',true),
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
                    textInputAction: TextInputAction.next,
                    controller: _controller1,
                    style: TextFieldTextStyle(),
                    decoration: TextFieldDecoration('Shift Name'),
                  ),
                  SizedBox(height: 10),
                  //-----------------------DropDown-------------------
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
                          'Assign Department',
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
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
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
                          textInputAction: TextInputAction.next,
                          controller: _controller2,
                          style: TextFieldTextStyle(),
                          decoration: TextFieldDecoration('Min'),
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
                            groupValue: _latemark,
                            onChanged: (LateMark value) {
                              setState(
                                () {
                                  _latemark = value;
                                },
                              );
                            },
                          ),
                          Text(
                            'As Shift Start',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Row(
                        children: [
                          Radio<LateMark>(
                            activeColor: kPrimaryColor,
                            value: LateMark.AfterGraceTime,
                            groupValue: _latemark,
                            onChanged: (LateMark value) {
                              setState(
                                () {
                                  _latemark = value;
                                },
                              );
                            },
                          ),
                          Text(
                            'After grace time',
                            style: TextStyle(color: Colors.grey),
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
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Colors.grey[300], width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _time1 != null
                                    ? _time1.toString()
                                    : 'Check in',
                                style: TextStyle(
                                    color: _time1 != null
                                        ? Colors.black
                                        : Colors.grey),
                              ),
                              IconButton(
                                icon: Icon(Icons.today),
                                onPressed: () {
                                  showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay(hour: 12, minute: 00),
                                          )
                                      .then((value) {
                                    setState(() {
                                      _time1 = value.format(context);
                                    });
                                  });
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
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Colors.grey[300], width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _time2 != null
                                    ? _time2.toString()
                                    : 'Check out',
                                style: TextStyle(
                                    color: _time2 != null
                                        ? Colors.black
                                        : Colors.grey),
                              ),
                              IconButton(
                                icon: Icon(Icons.today),
                                onPressed: () {
                                  showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay(hour: 12, minute: 00),
                                          )
                                      .then((value) {
                                    setState(() {
                                      _time2 = value.format(context);
                                    });
                                  });
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
                    if (_controller1.text.isNotEmpty &&
                        _controller2.text.isNotEmpty &&
                        _dropdownValue != null &&
                        _latemark != null &&
                        _time1 != null &&
                        _time2 != null) {
                      Navigator.pop(context);
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
