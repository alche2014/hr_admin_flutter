import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Personal_Information/form.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class CreateLeavePolicy extends StatefulWidget {
  @override
  _CreateLeavePolicyState createState() => _CreateLeavePolicyState();
}

class _CreateLeavePolicyState extends State<CreateLeavePolicy> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  TextEditingController _controller4 = new TextEditingController();
  TextEditingController _controller5 = new TextEditingController();
  var _dropdownValue1;
  var _dropdownValue2;
  var _dropdownValue3;
  var _gender;
  var _iscchecked = false;
  var _isSwitched1 = false;
  var _isSwitched2 = false;
  var _isSwitched3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Create Leave Policy',true,'notification',true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            //------------------------textfield----------------
            children: [
              TextFormField(
                textInputAction: TextInputAction.next,
            controller: _controller1,
            style: TextFieldTextStyle(),
                decoration: TextFieldDecoration('Ploicy Name'),
              ),
              SizedBox(height: 10),
              TextFormField(
                textInputAction: TextInputAction.next,
            controller: _controller2,
            style: TextFieldTextStyle(),
                decoration: TextFieldDecoration('Short Name'),
              ),
              SizedBox(height: 10),
              //------------------Drop down--------------------
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
                      'Select Location / Branch',
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
                      'Select Grade / Designation',
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
              //-----------------Radio button-----------------------
              Row(
                children: <Widget>[
                  Row(
                    children: [
                      Radio<Gender>(
                        activeColor: kPrimaryColor,
                        value: Gender.Male,
                        groupValue: _gender,
                        onChanged: (Gender value) {
                          setState(
                            () {
                              _gender = value;
                            },
                          );
                        },
                      ),
                      Text('Male',style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Radio<Gender>(
                        activeColor: kPrimaryColor,
                        value: Gender.Female,
                        groupValue: _gender,
                        onChanged: (Gender value) {
                          setState(
                            () {
                              _gender = value;
                            },
                          );
                        },
                      ),
                      Text('Female', style: TextStyle(color: Colors.grey))
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Radio<Gender>(
                        activeColor: kPrimaryColor,
                        value: Gender.Both,
                        groupValue: _gender,
                        onChanged: (Gender value) {
                          setState(
                            () {
                              _gender = value;
                            },
                          );
                        },
                      ),
                      Text('Both', style: TextStyle(color: Colors.grey),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              //------------------DropDown----------------
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey[300], width: 1)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _dropdownValue3,
                    style: TextStyle(color: Colors.black),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    elevation: 0,
                    isExpanded: true,
                    hint: Text(
                      'Leave Accrual',
                      style: TextStyle(color: Colors.grey),
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        _dropdownValue3 = newValue;
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
              //----------------------checkBox-----------------
              Theme(
                data: ThemeData(
                  unselectedWidgetColor:
                      MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? kPrimaryColor
                          : kPrimaryColor,
                ),
                child: CheckboxListTile(
                  contentPadding: EdgeInsets.only(left: 0),
                  // contentPadding: null,
                  title: Text(
                    'From joining or upon confirmation',
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
              SizedBox(height: 10),
              //-------------------textfields----------------
              TextFormField(
                textInputAction: TextInputAction.next,
            controller: _controller3,
            style: TextFieldTextStyle(),
                decoration: TextFieldDecoration('Leave Quote'),
              ),
              SizedBox(height: 10),
              TextFormField(
                textInputAction: TextInputAction.next,
            controller: _controller4,
            style: TextFieldTextStyle(),
                decoration: TextFieldDecoration('Minimum Days to Apply'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              TextFormField(
                textInputAction: TextInputAction.next,
            controller: _controller5,
            style: TextFieldTextStyle(),
                decoration: TextFieldDecoration(
                    'Minimum experience in days to earn leave'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              //------------------Switches-----------------
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey[300], width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Active / InActive',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Switch(
                      value: _isSwitched1,
                      onChanged: (value) {
                        setState(() {
                          _isSwitched1 = value;
                        });
                      },
                      activeTrackColor: kPrimaryColor.withOpacity(0.6),
                      activeColor: kPrimaryColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey[300], width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sandwich',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Switch(
                      value: _isSwitched2,
                      onChanged: (value) {
                        setState(() {
                          _isSwitched2 = value;
                        });
                      },
                      activeTrackColor: kPrimaryColor.withOpacity(0.6),
                      activeColor: kPrimaryColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey[300], width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Auto Allocation',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Switch(
                      value: _isSwitched3,
                      onChanged: (value) {
                        setState(() {
                          _isSwitched3 = value;
                        });
                      },
                      activeTrackColor: kPrimaryColor.withOpacity(0.6),
                      activeColor: kPrimaryColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              //------------------------Buttons------------------------
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                   if (_controller1.text.isNotEmpty &&
                    _controller2.text.isNotEmpty &&
                    _controller3.text.isNotEmpty &&
                    _controller4.text.isNotEmpty &&
                    _controller5.text.isNotEmpty &&
                    _dropdownValue1 != null &&
                    _dropdownValue2 != null &&
                    _dropdownValue3 != null &&
                   _gender != null) {
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Complete the Form.'),
                    ),
                  );
                }
                  },
                  child: Text(
                    'Save Policy',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
