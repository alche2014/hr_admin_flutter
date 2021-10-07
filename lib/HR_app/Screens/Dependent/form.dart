import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';

class DependentForm extends StatefulWidget {
  @override
  _DependentFormState createState() => _DependentFormState();
}

class _DependentFormState extends State<DependentForm> {
  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
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
                      'Relation',
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
//---------------------textfield-----------------------------
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Company Name',
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
              ),
              SizedBox(height: 10),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Description',
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
              ),
            ],
          ),
          //--------------------Save button---------------------
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
                'Save',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
