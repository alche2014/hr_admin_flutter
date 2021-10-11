import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Pg1_Signin.dart';
import 'package:hr_admin/HR_app/Screens/Requests/Components/model.dart';
import 'package:hr_admin/HR_app/constants.dart';

class ResetYourPassword extends StatelessWidget {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color: MediaQuery.of(context).platformBrightness == Brightness.light
                ? Colors.black
                : Colors.white),
      ),
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

//--------------------------body-------------------------
          Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.transparent,
                      child:
                          Image(image: AssetImage('assets/images/Frame.png')),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Reset your password',
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Please create your new passowrd and enjoy the destination app',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      style: TextFieldTextStyle(),
                      controller: _controller1,
                      decoration: TextFieldDecoration('Create Password'),
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
                    SizedBox(height: 10),
                    TextFormField(
                      style: TextFieldTextStyle(),
                      controller: _controller2,
                      decoration: TextFieldDecoration('Verify Password'),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value.isEmpty) {
                          return null;
                        } else if (value != _controller1.text) {
                          return 'Enter same Password';
                        } else
                          return null;
                      },
                    ),
                    SizedBox(height: 30),
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_controller1.text.isNotEmpty &&
                              _controller2.text.isNotEmpty)
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Signin_Pg1()));
                          if (_controller1.text.isEmpty ||
                              _controller2.text.isEmpty)
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Complete the Form.'),
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
                          'SAVE',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
