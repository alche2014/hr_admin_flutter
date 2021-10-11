import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class CreateAnnouncement extends StatefulWidget {
  @override
  _CreateAnnouncementState createState() => _CreateAnnouncementState();
}

class _CreateAnnouncementState extends State<CreateAnnouncement> {
  var dropdownValue1;
  var dropdownValue2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: app_bar(titilee: 'Create Announcemet'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextFormField(
                  decoration: TextFieldDecoration('Tile'),
                ),
                SizedBox(height: 10),
                //----------------------Dropdown1----------------------------
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey[300], width: 1)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: dropdownValue1,
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
                          dropdownValue1 = newValue;
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
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey[300], width: 1)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: dropdownValue2,
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
                          dropdownValue2 = newValue;
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
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Start Date'),
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
                            Text('End Date'),
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
                SizedBox(height: 10),
                TextFormField(
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
