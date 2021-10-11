import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/navigationbar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class FormCompanyInfo extends StatefulWidget {
  @override
  _FormCompanyInfoState createState() => _FormCompanyInfoState();
}

class _FormCompanyInfoState extends State<FormCompanyInfo> {
  String dropdownValue1;
  String dropdownValue2;
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller1,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Company Name'),
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
            textInputAction: TextInputAction.next,
            controller: _controller2,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Postal Name'),
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
            controller: _controller3,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Phone'),
            keyboardType: TextInputType.phone,
            inputFormatters: [phonemask],
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
                value: dropdownValue1,
                style: TextStyle(color: Colors.black),
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                hint: Text(
                  'Industry',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey[300], width: 1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue2,
                style: TextStyle(color: Colors.black),
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                hint: Text(
                  'Time Zone',
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
          SizedBox(height: 25),
//----------------Create button--------------------------
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
              onPressed: () {
                if (_controller1.text.isNotEmpty &&
                    _controller2.text.isNotEmpty &&
                    _controller3.text.isNotEmpty &&
                    dropdownValue1 != null &&
                    dropdownValue2 != null) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => NavigationBar()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please fill the complete form'),
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
