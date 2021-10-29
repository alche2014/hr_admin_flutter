// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hr_admin/HR_app/Splash/splash.dart';
import 'package:hr_admin/HR_app/Theme.dart';
import 'package:hr_admin/HR_app/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget with ChangeNotifier{
  static ValueNotifier<bool> isdarkmode = ValueNotifier(false);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom],
  );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: MyApp.isdarkmode,
      builder: (context, value,_) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: darkmode== false ? lightThemeData(context): darkThemeData(context),
          // theme: lightThemeData(context),
          // darkTheme: darkThemeData(context),
          home: Splash(),
        );
      }
    );
  }
}
// home: Signin_Pg1(),