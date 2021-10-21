import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';

class DependentForm extends StatefulWidget {
  @override
  _DependentFormState createState() => _DependentFormState();
}

class _DependentFormState extends State<DependentForm> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  var _dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: _controller1,
                style: TextFieldTextStyle(),
                decoration: TextFieldDecoration('Name'),
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

              //    DropdownButtonFormField(
              //   decoration: InputDecoration(
              //       border: const OutlineInputBorder(
              //         borderSide: BorderSide.none,
              //         borderRadius: BorderRadius.all(
              //           Radius.circular(10),
              //         ),
              //       ),
              //       labelText: "Role",
              //       labelStyle: TextStyle(fontSize: 12,color: Colors.grey),
              //       filled: true,
              //       fillColor: Colors.white),
              //   value: _dropdownValue,
              //   items: <String>['Destination', 'Software']
              //       .map<DropdownMenuItem<String>>((String value) {
              //     return DropdownMenuItem<String>(
              //       value: value,
              //       child: Text(value, style: TextStyle(fontSize: 12,color: Colors.grey),),
              //     );
              //   }).toList(),
              //   onChanged: (value) {
              //     setState(() {
              //       _dropdownValue = value;
              //     });
              //   },
              // ),

              Container(
                // padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey[300], width: 1)),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      labelText: "Role",
                      labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white),
                  value: _dropdownValue,
                  items: <String>[
                    'Brother',
                    'Sister',
                    'Father',
                    'Mother',
                    'Spouse',
                    'Daughter',
                    'Son',
                  ].map<DropdownMenuItem<String>>(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                  onChanged: (String newValue) {
                    setState(() {
                      _dropdownValue = newValue;
                    });
                  },
                ),
              ),
              SizedBox(height: 10),
//---------------------textfield-----------------------------
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: _controller2,
                style: TextFieldTextStyle(),
                decoration: TextFieldDecoration('Company Name'),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _controller3,
                style: TextFieldTextStyle(),
                maxLines: 4,
                decoration: TextFieldDecoration('Description'),
              ),
            ],
          ),
          //--------------------Save button---------------------
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
              onPressed: () {
                if (_controller1.text.isNotEmpty &&
                    _controller2.text.isNotEmpty &&
                    _controller3.text.isNotEmpty &&
                    _dropdownValue != null) {
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
