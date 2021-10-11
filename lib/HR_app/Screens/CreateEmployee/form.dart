import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';

enum Gender { Male, Female }

class CreateEmployeeForm extends StatefulWidget {
  @override
  _CreateEmployeeFormState createState() => _CreateEmployeeFormState();
}

class _CreateEmployeeFormState extends State<CreateEmployeeForm> {
  var _gender;
  var _dropdownValue1;
  var _dropdownValue2;
  var _dropdownValue3;
  var _dropdownValue4;
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  TextEditingController _controller4 = new TextEditingController();
  TextEditingController _controller5 = new TextEditingController();
  TextEditingController _controller6 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller1,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('First Name'),
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
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _controller2,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Last Name'),
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
                  'Type',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
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
//-------------------Textfields------------------
          TextFormField(
            controller: _controller3,
            textInputAction: TextInputAction.next,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('User Name'),
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
            controller: _controller4,
            style: TextFieldTextStyle(),
            obscureText: true,
            decoration: TextFieldDecoration('Password'),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value.isEmpty) {
                return null;
              } else if (value.contains(' ')) {
                return 'Password can not contain blank Spaces';
              } else if (value.length < 4) {
                return 'Enter atleast 4 characters';
              } else
                return null;
            },
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
                value: _dropdownValue2,
                style: TextStyle(color: Colors.black),
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                hint: Text(
                  'Job Position',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
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
                  'Reporting to',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey[300], width: 1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _dropdownValue4,
                style: TextStyle(color: Colors.black),
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                hint: Text(
                  'Leave Policy',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                onChanged: (String newValue) {
                  setState(() {
                    _dropdownValue4 = newValue;
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
//--------------------------textfields-------------------------
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller5,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Email Address'),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              final pattern =
                  (r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
              final regExp = RegExp(pattern);

              if (value.isEmpty) {
                return null;
              } else if (value.contains(' ')) {
                return 'can not have blank spaces';
              } else if (!regExp.hasMatch(value)) {
                return 'Enter a valid email';
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _controller6,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Phone'),
            keyboardType: TextInputType.phone,
            inputFormatters: [phonemask],
          ),
          SizedBox(height: 10),
          //
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
                  Text(
                    'Male',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
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
                  Text(
                    'Female',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          //----------------Create button--------------------------
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
              onPressed: () {
                if (_controller1.text.isNotEmpty &&
                    _controller2.text.isNotEmpty &&
                    _controller3.text.isNotEmpty &&
                    _controller4.text.isNotEmpty &&
                    _controller5.text.isNotEmpty &&
                    _controller6.text.isNotEmpty &&
                    _dropdownValue1 != null &&
                    _dropdownValue2 != null &&
                    _dropdownValue3 != null &&
                    _dropdownValue4 != null &&
                    _gender != null) {
                  Navigator.of(context).pop();
                }
                else{
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
                'Create',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
