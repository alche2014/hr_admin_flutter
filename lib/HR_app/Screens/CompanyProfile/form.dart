import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Company_Profile_Form extends StatefulWidget {
  @override
  _Company_Profile_FormState createState() => _Company_Profile_FormState();
}

class _Company_Profile_FormState extends State<Company_Profile_Form> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  TextEditingController _controller4 = new TextEditingController();
  TextEditingController _controller5 = new TextEditingController();
  TextEditingController _controller6 = new TextEditingController();
  TextEditingController _controller7 = new TextEditingController();
  var _dropdownValue1;
  var _dropdownValue2;
  var _dropdownValue3;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
//----------------------image-------------------
          CircularPercentIndicator(
            radius: 87,
            lineWidth: 3,
            backgroundColor: Colors.white,
            percent: 0.50,
            progressColor: kPrimaryColor,
            circularStrokeCap: CircularStrokeCap.round,
            animation: true,
            center: Stack(
              children: [
                CircleAvatar(
                  radius: 40,
                  child: ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage('assets/images/user1.png'),
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image(
                    image: AssetImage('assets/images/Vector.png'),
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 3,
                  right: 3,
                  child: Icon(
                    Icons.edit_outlined,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
//------------------textfields--------------------
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller1,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Company Name'),
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller2,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Portal Name'),
          ),
          SizedBox(height: 10),
          //-----------------------DropDown1-------------------
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
                  'Industry',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
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
//----------------------Dropdown2----------------------------
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
                  'Domain(alchi.com)',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
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
//-------------------------Textfield--------------------------
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller3,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Mobile'),
            keyboardType: TextInputType.phone,
            inputFormatters: [phonemask],
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller4,
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
            textInputAction: TextInputAction.next,
            controller: _controller5,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Contact Person'),
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller6,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Country'),
          ),
          SizedBox(height: 10),
          //----------------------Dropdown3----------------------------
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
                  'TimeZone',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
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
//-------------------textfield-----------------
          TextFormField(
            controller: _controller7,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Address'),
          ),

          SizedBox(height: 10),
          //----------------------Map-----------------------
          Container(
            height: 230,
            child: Image.asset(
              'assets/images/map.png',
              fit: BoxFit.cover,
            ),
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
                    _dropdownValue1 != null &&
                    _dropdownValue2 != null &&
                    _dropdownValue3 != null ) {
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
