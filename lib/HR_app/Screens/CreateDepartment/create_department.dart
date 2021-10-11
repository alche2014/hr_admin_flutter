import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class CreateDepartment extends StatelessWidget {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(
        titilee: 'Create Department',
        myicon: 'tune',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //------------------textfields--------------------
                TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _controller1,
                    style: TextFieldTextStyle(),
                    decoration: TextFieldDecoration('Department Name')),
                SizedBox(height: 10),
                TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _controller2,
                    style: TextFieldTextStyle(),
                    decoration: TextFieldDecoration('Parent Department')),
                SizedBox(height: 10),
                TextFormField(
                  controller: _controller3,
                  style: TextFieldTextStyle(),
                  decoration: TextFieldDecoration('Added By'),
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
            //----------------Save button--------------------------
            FractionallySizedBox(
              widthFactor: 1,
              child: ElevatedButton(
                onPressed: () {
                  if (_controller1.text.isNotEmpty &&
                      _controller2.text.isNotEmpty &&
                      _controller3.text.isNotEmpty) {
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
                    vertical: 18,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Text(
                  'SAVE DEPARTMENT',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
