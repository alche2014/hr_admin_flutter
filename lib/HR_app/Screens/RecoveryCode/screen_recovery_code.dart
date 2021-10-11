import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/ResetPassword/screen_reset_password.dart';
import 'package:hr_admin/HR_app/constants.dart';

class RecoveryCode extends StatelessWidget {
  final node0 = FocusNode();
  final node1 = FocusNode();
  final node2 = FocusNode();
  final node3 = FocusNode();
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  TextEditingController _controller4 = new TextEditingController();
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
                        'Enter 4-digit recovery code',
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'The recovery code was sent to your mobile number. please enter the code.',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: TextField(
                            focusNode: node0,
                            controller: _controller1,
                            style: TextStyle(fontSize: 42),
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            decoration: InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                counter: Offstage()),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              if (value.isNotEmpty)
                                FocusScope.of(context).requestFocus(node1);
                            },
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: TextField(
                            focusNode: node1,
                            controller: _controller2,
                            style: TextStyle(fontSize: 42),
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            decoration: InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                counter: Offstage()),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              if (value.isNotEmpty)
                                FocusScope.of(context).requestFocus(node2);
                              if (value.isEmpty)
                                FocusScope.of(context).requestFocus(node0);
                            },
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: TextField(
                            focusNode: node2,
                            controller: _controller3,
                            style: TextStyle(fontSize: 42),
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            decoration: InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                counter: Offstage()),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              if (value.isNotEmpty)
                                FocusScope.of(context).requestFocus(node3);
                              if (value.isEmpty)
                                FocusScope.of(context).requestFocus(node1);
                            },
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: TextField(
                            focusNode: node3,
                            controller: _controller4,
                            style: TextStyle(fontSize: 42),
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            decoration: InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                counter: Offstage()),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              if (value.isEmpty)
                                FocusScope.of(context).requestFocus(node2);
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_controller1.text.isNotEmpty &&
                              _controller2.text.isNotEmpty &&
                              _controller3.text.isNotEmpty &&
                              _controller4.text.isNotEmpty)
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ResetYourPassword()));
                          if (_controller1.text.isEmpty ||
                              _controller2.text.isEmpty ||
                              _controller3.text.isEmpty ||
                              _controller4.text.isEmpty)
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Enter the right Code.'),
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
                          'NEXT',
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
