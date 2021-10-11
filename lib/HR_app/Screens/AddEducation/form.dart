import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:intl/intl.dart';

class AddEducationForm extends StatefulWidget {
  @override
  _AddEducationFormState createState() => _AddEducationFormState();
}

class _AddEducationFormState extends State<AddEducationForm> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  TextEditingController _controller4 = new TextEditingController();
  TextEditingController _controller5 = new TextEditingController();
  var _dropdownValue;
  var _dateOfBirth1;
  var _dateOfBirth2;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: _controller1,
                style: TextFieldTextStyle(),
                decoration: TextFieldDecoration('School'),
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
                      'Degree',
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
//---------------------textfield-----------------------------
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: _controller2,
                style: TextFieldTextStyle(),
                decoration: TextFieldDecoration('Field of study'),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                  final regExp = RegExp(pattern);
                  if (value.isEmpty) {
                    return null;
                  } else if (!regExp.hasMatch(value)) {
                    return 'Enter a Valid Field';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 10),
//----------------------Date picker----------------------------
              Row(
                children: [
                  Flexible(
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border:
                              Border.all(color: Colors.grey[300], width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _dateOfBirth1 != null
                                ? DateFormat.yMd()
                                    .format(_dateOfBirth1)
                                    .toString()
                                : 'Start Date',
                            style: TextStyle(
                                color: _dateOfBirth1 != null
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
                                  _dateOfBirth1 = value;
                                });
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Flexible(
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border:
                              Border.all(color: Colors.grey[300], width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _dateOfBirth2 != null
                                ? DateFormat.yMd()
                                    .format(_dateOfBirth2)
                                    .toString()
                                : 'End Date',
                            style: TextStyle(
                                color: _dateOfBirth2 != null
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
                                  _dateOfBirth2 = value;
                                });
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
//------------------------textfield-----------------
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: _controller3,
                style: TextFieldTextStyle(),
                decoration: TextFieldDecoration('Grade'),
              ),
              SizedBox(height: 10),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: _controller4,
                style: TextFieldTextStyle(),
                decoration: TextFieldDecoration('Activitie & Societies'),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(height: 10),
//---------------------textfield-----------------------------
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: _controller5,
                style: TextFieldTextStyle(),
                maxLines: 4,
                decoration: TextFieldDecoration('Description'),
              ),
            ],
          ),
          SizedBox(height: 50),
          //--------------------Save button---------------------
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
              onPressed: () {
                if (_controller1.text.isNotEmpty &&
                    _controller2.text.isNotEmpty &&
                    _controller3.text.isNotEmpty &&
                    _controller4.text.isNotEmpty &&
                    _controller5.text.isNotEmpty &&
                    _dropdownValue != null &&
                    _dateOfBirth1 != null &&
                    _dateOfBirth2 != null) {
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
                'Save',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
