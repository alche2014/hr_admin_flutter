import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Pg1_Signin.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int _myValue = 3000;
  int _progress = 1500;

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: _myValue), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Signin_Pg1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFC53B4B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Image.asset('assets/ac_logo.png'),
            Spacer(flex: 3),
            TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: Duration(milliseconds: _progress),
              builder: (context, value, _) => Container(
                height: 15,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: LinearProgressIndicator(
                    value: value,
                    backgroundColor: Colors.transparent,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              ' 2021. All rights reserved',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
