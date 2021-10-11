import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CompanyInformation/company_information.dart';
import 'package:hr_admin/HR_app/Screens/ForgetPassword/screen_forget_password.dart';
import 'package:hr_admin/HR_app/Screens/navigationbar.dart';
import 'package:hr_admin/HR_app/constants.dart';

// ignore: camel_case_types
class Signin_Pg1 extends StatelessWidget {
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          //--------------------stacked container for styling------------------
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.17,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(150),
                ),
              ),
            ),
          ),
//--------------------------body-------------------------
          body(),
        ],
      ),
    );
  }
}

class body extends StatefulWidget {
  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  TextEditingController _controller1 = new TextEditingController();

  TextEditingController _controller2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MyBody(context);
  }

  Scaffold MyBody(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.transparent,
    body: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 1,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                CircleAvatar(
                  radius: 140,
                  backgroundColor: Colors.transparent,
                  child:
                      Image(image: AssetImage('assets/images/Frame.png')),
                ),
                SizedBox(
                  height: 60,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: _controller1,
                  style: TextFieldTextStyle(),
                  decoration: TextFieldDecoration('User Name'),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter a Valid User Name';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // textInputAction: TextInputAction.none,
                  controller: _controller2,
                  style: TextFieldTextStyle(),
                  obscureText: true,
                  decoration: TextFieldDecoration('Password'),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value.isEmpty) {
                      return null;
                    } else if (value.contains(' ')) {
                      return 'Password can not contain blank Spaces';
                    } else if (value.length < 4) {
                      return 'Enter atleast 4 characters';
                    } else
                      return null;
                  },
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ForgetPassword()));
                      },
                      child: Text('Forget Password?',
                          style: TextStyle(color: Colors.grey))),
                ),
              ],
            ),
            // SizedBox(height: 250),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CompanyInformation()));
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_controller1.text.isNotEmpty &&
                          _controller2.text.isNotEmpty)
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NavigationBar()));
                      if (_controller1.text.isEmpty ||
                          _controller2.text.isEmpty)
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Enter User Name & Password.'),
                          ),
                        );
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
                      'SIGN IN',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  }
}
