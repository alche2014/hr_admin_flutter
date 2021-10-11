import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Company_Profile_Form extends StatefulWidget {
  @override
  _Company_Profile_FormState createState() => _Company_Profile_FormState();
}

class _Company_Profile_FormState extends State<Company_Profile_Form> {
  var dropdownValue1;
  var dropdownValue2;
  var dropdownValue3;
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
            decoration: TextFieldDecoration('Company Name'),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: TextFieldDecoration('Portal Name'),
          ),
          SizedBox(height: 10),
          //-----------------------DropDown1-------------------
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                  style: TextStyle(color: Colors.grey, fontSize: 16),
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
//----------------------Dropdown2----------------------------
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey[300], width: 1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue2,
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
          SizedBox(height: 10),
//-------------------------Textfield--------------------------
          TextFormField(
            decoration: TextFieldDecoration('Mobile'),
            keyboardType: TextInputType.phone,
            inputFormatters: [phonemask],
          ),
          SizedBox(height: 10),
          TextFormField(
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
            decoration: TextFieldDecoration('Contact Person'),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: TextFieldDecoration('Country'),
          ),
          SizedBox(height: 10),
          //----------------------Dropdown3----------------------------
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey[300], width: 1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue3,
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
                    dropdownValue3 = newValue;
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
