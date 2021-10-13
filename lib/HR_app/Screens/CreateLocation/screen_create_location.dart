import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class CreateLocation extends StatefulWidget {
  @override
  State<CreateLocation> createState() => _CreateLocationState();
}

class _CreateLocationState extends State<CreateLocation> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  TextEditingController _controller4 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context, 'Create Location', true, 'tune', true),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.89,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //--------------------textfield-----------------------------

                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _controller1,
                    style: TextFieldTextStyle(),
                    decoration: TextFieldDecoration('Location Name'),
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
                    decoration: InputDecoration(
                      labelText: 'Address',
                      labelStyle: TextStyle(color: Colors.grey),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      suffixIcon:
                          Icon(Icons.location_pin, color: kPrimaryColor),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey[300]),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(color: Colors.grey[300], width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey[300]),
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
                  SizedBox(height: 20),
                  //----------------------Map-----------------------
                  Container(
                    height: 230,
                    child: Image.asset(
                      'assets/images/map.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  //-------------------textfields---------------
                  SizedBox(height: 20),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _controller1,
                    style: TextFieldTextStyle(),
                    decoration: TextFieldDecoration('Phone'),
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
                    controller: _controller1,
                    style: TextFieldTextStyle(),
                    decoration: TextFieldDecoration('Email'),
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
                ],
              ),
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
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Save Location',
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
