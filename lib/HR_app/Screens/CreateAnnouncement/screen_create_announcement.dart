import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:intl/intl.dart';

class CreateAnnouncement extends StatefulWidget {
  @override
  _CreateAnnouncementState createState() => _CreateAnnouncementState();
}

class _CreateAnnouncementState extends State<CreateAnnouncement> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  var _dropdownValue1;
  var _dropdownValue2;
  var _date1;
  var _date2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: app_bar(context,'Create Announcement',true,'notification',true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: _controller1,
                  style: TextFieldTextStyle(),
                  decoration: TextFieldDecoration('Tile'),
                ),
                SizedBox(height: 10),
                //----------------------Dropdown1----------------------------
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey[300], width: 1)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _dropdownValue1,
                      style: TextStyle(color: Colors.black),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      elevation: 0,
                      isExpanded: true,
                      hint: Text(
                        'Department',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          _dropdownValue1 = newValue;
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
                //----------------------Dropdown2----------------------------
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey[300], width: 1)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _dropdownValue2,
                      style: TextStyle(color: Colors.black),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      elevation: 0,
                      isExpanded: true,
                      hint: Text(
                        'Gender wise',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          _dropdownValue2 = newValue;
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
                //----------------------Date Picker---------------
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: Colors.grey[300], width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _date1 != null
                                  ? DateFormat.yMd().format(_date1).toString()
                                  : 'Start Date',
                              style: TextStyle(
                                  color: _date1 != null
                                      ? Colors.black
                                      : Colors.grey),
                            ),
                            IconButton(
                              icon: Icon(Icons.today),
                              onPressed: () {
                                showDatePicker(
                                        context: context,
                                        initialDate: DateTime(2005),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime.now())
                                    .then((value) {
                                  setState(() {
                                    _date1 = value;
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
                            border:
                                Border.all(color: Colors.grey[300], width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _date2 != null
                                  ? DateFormat.yMd().format(_date2).toString()
                                  : 'Start Date',
                              style: TextStyle(
                                  color: _date2 != null
                                      ? Colors.black
                                      : Colors.grey),
                            ),
                            IconButton(
                              icon: Icon(Icons.today),
                              onPressed: () {
                                showDatePicker(
                                        context: context,
                                        initialDate: DateTime(2005),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime.now())
                                    .then((value) {
                                  setState(() {
                                    _date2 = value;
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
                SizedBox(height: 10),
                TextFormField(
                  controller: _controller2,
                  style: TextFieldTextStyle(),
                  maxLines: 4,
                  decoration: TextFieldDecoration('Description'),
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
                      _dropdownValue1 != null &&
                      _dropdownValue2 != null &&
                      _date1 != null &&
                      _date2 != null) {
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
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Text(
                  'SAVE ANNOUNCEMENT',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
