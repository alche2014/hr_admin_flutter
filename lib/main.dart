import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Pg1_Signin.dart';
import 'package:hr_admin/HR_app/Screens/Settings/body.dart';
import 'package:hr_admin/HR_app/Screens/navigationbar.dart';
import 'package:hr_admin/HR_app/Theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with ChangeNotifier{
  static ValueNotifier<bool> isdarkmode = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isdarkmode,
      builder: (context, value,_) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: darkmode== false ? lightThemeData(context): darkThemeData(context),
          // theme: lightThemeData(context),
          // darkTheme: darkThemeData(context),
          home: Signin_Pg1(),
        );
      }
    );
  }
}
