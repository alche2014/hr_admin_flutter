import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/RecoveryCode/screen_recovery_code.dart';
import 'package:hr_admin/HR_app/constants.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Image(image: AssetImage('assets/images/Frame.png')),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'How to verify your password reset request?',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 40, right: 40),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RecoveryCode()));
                      },
                      child: ListTile(
                        // contentPadding: EdgeInsets.only(top: 40, left: 40),
                        leading: Icon(
                          Icons.phone_android,
                          size: 31,
                          color: MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? Colors.black
                              : Colors.white,
                        ),
                        title: Text(
                          'via sms:',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        subtitle: Text(
                          '**** ****' + '9011',
                          style: TextStyle(
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? Colors.black
                                : Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 40, right: 40),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RecoveryCode()));
                      },
                      child: ListTile(
                        // contentPadding: EdgeInsets.only(top: 40, left: 40),
                        leading: Icon(
                          Icons.mail_outline,
                          size: 31,
                          color: MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? Colors.black
                              : Colors.white,
                        ),
                        title: Text(
                          'via email:',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        subtitle: Text(
                          '*****' + 'el@gmail.com',
                          style: TextStyle(
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? Colors.black
                                : Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
