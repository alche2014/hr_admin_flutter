import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:intl/intl.dart';

class Work_Info_Form extends StatefulWidget {
  @override
  Work_Info_FormState createState() => Work_Info_FormState();
}

class Work_Info_FormState extends State<Work_Info_Form> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  TextEditingController _controller4 = new TextEditingController();
  TextEditingController _controller5 = new TextEditingController();
  TextEditingController _controller6 = new TextEditingController();
  var _dateofbirth;
  var _dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller1,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Department'),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
              final regExp = RegExp(pattern);
              if (value.isEmpty) {
                return null;
              } else if (!regExp.hasMatch(value)) {
                return 'Enter a Valid Department';
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller2,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Designation'),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
              final regExp = RegExp(pattern);
              if (value.isEmpty) {
                return null;
              } else if (!regExp.hasMatch(value)) {
                return 'Enter a Valid Designation';
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller3,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Role'),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
              final regExp = RegExp(pattern);
              if (value.isEmpty) {
                return null;
              } else if (!regExp.hasMatch(value)) {
                return 'Enter a Valid Role';
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller4,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Reporting to'),
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
                value: _dropdownValue,
                style: TextStyle(color: Colors.black),
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                hint: Text(
                  'Type',
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
            controller: _controller5,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Phone'),
            keyboardType: TextInputType.phone,
            inputFormatters: [phonemask],
          ),
          SizedBox(height: 10),
          //----------------------Date picker----------------------------
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey[300], width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _dateofbirth != null
                      ? DateFormat.yMd().format(_dateofbirth).toString()
                      : 'Date of Birth',
                  style: TextStyle(
                      color: _dateofbirth != null ? Colors.black : Colors.grey),
                ),
                IconButton(
                  icon: Icon(Icons.today),
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime(2005),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    ).then((value) {
                      setState(() {
                        _dateofbirth = value;
                      });
                    });
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 10),
//---------------------textfields------------------------------
          TextFormField(
            controller: _controller6,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Location'),
          ),
          SizedBox(height: 30),
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
                    _controller6.text.isNotEmpty &&
                    _dropdownValue != null &&
                    _dateofbirth != null) {
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
