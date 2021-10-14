import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

void saveImage(path) async {
  SharedPreferences saveimage = await SharedPreferences.getInstance();
  saveimage.setString('saveImage', path);
}

Future<String> loadImage() async {
  SharedPreferences loadimage = await SharedPreferences.getInstance();
  // setState(() {
  return loadimage.getString('saveImage');
  // });
}

enum Gender { Male, Female, Both }

class Personal_Info_Form extends StatefulWidget {
  @override
  _Personal_Info_FormState createState() => _Personal_Info_FormState();
}

class _Personal_Info_FormState extends State<Personal_Info_Form> {
  File image;
  String _imagePath;
//------------imagepicker----------------
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      // File imageTemp = File(image.path);

      saveImage(image.path);
      setState(() {
        // print('yoyoyoyooyoyooyoyoyoyoyoyoyoyoy');
        // print(image.path.toString());
        _imagePath = image.path;
        // print(_imagePath);
        // print('yoyoyoyooyoyooyoyoyoyoyoyoyoyoy');
        // saveImage(this.image);
      });
    } on PlatformException catch (e) {
      print('Access Rejected: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    loadImage().then((value) {
      setState(() {
        _imagePath = value;
      });
    });
  }

  var _gender;
  var _dropdownValue;
  var _dropdownValue1;
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  TextEditingController _controller4 = new TextEditingController();
  TextEditingController _controller5 = new TextEditingController();
  TextEditingController _controller6 = new TextEditingController();
  TextEditingController _controller7 = new TextEditingController();
  TextEditingController _controller8 = new TextEditingController();
  TextEditingController _controller9 = new TextEditingController();

  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
//----------------------image-------------------
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext bc) {
                    return Container(
                      child: new Wrap(
                        children: <Widget>[
                          new ListTile(
                              leading: new Icon(Icons.image),
                              title: new Text('Gallery'),
                              onTap: () {
                                setState(() {
                                  Navigator.pop(context);
                                  pickImage();
                                });
                              }),
                        ],
                      ),
                    );
                  });
            },
            child: CircularPercentIndicator(
              radius: 107,
              lineWidth: 5,
              backgroundColor: Colors.white,
              percent: 0.50,
              progressColor: kPrimaryColor,
              circularStrokeCap: CircularStrokeCap.round,
              animation: true,
              center: Stack(
                children: [
                  _imagePath != null
                      ? CircleAvatar(
                          radius: 50,
                          child: ClipRRect(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: BorderRadius.circular(100),
                            child: Image(
                              image: FileImage(File(_imagePath)),
                              height: 114,
                              width: 115,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : CircleAvatar(
                          radius: 50,
                          child: ClipRRect(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: BorderRadius.circular(100),
                            child: image != null
                                ? Image.file(image)
                                : Image.asset(
                                    "assets/images/user.png",
                                    height: 114,
                                    width: 115,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image(
                      image: AssetImage('assets/images/Vector.png'),
                      height: 25,
                      width: 25,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 3,
                    right: 3,
                    child: Icon(
                      Icons.edit_outlined,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
//------------------textfields--------------------
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
          SizedBox(
            height: 10,
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller2,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Email'),
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
                value: _dropdownValue,
                style: TextStyle(color: Colors.black),
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                hint: Text(
                  'City',
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
                  Text(
                    'Male',
                    style: TextStyle(color: Colors.grey),
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
                  Text('Female',
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                ],
              )
            ],
          ),
          SizedBox(height: 10),
//----------------------Dropdown----------------------------
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
                  'Status',
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
//-------------------------Textfield--------------------------
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller4,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Blood Group'),
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller5,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Designatoin'),
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
            controller: _controller6,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Bank Name'),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
              final regExp = RegExp(pattern);
              if (value.isEmpty) {
                return null;
              } else if (!regExp.hasMatch(value)) {
                return 'Enter a Valid Bank Name';
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller7,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Bank No'),
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value.isEmpty) {
                return null;
              } else if (value.contains(' ')) {
                return 'Bank No. can not contain blank Spaces';
              } else
                return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller8,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('CNIC'),
            keyboardType: TextInputType.number,
            inputFormatters: [cnicemask],
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _controller9,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Address'),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value.isEmpty) {
                return null;
              } else if (value.contains(' ')) {
                return 'Remove spaces form start';
              } else
                return null;
            },
          ),
          SizedBox(height: 30),
          //----------------Save button--------------------------
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
                    _controller7.text.isNotEmpty &&
                    _controller8.text.isNotEmpty &&
                    _controller9.text.isNotEmpty &&
                    _dropdownValue1 != null &&
                    _dropdownValue != null &&
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
