import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Employee/components/model.dart';
import 'package:hr_admin/HR_app/Screens/Employes/screen_employes.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:hr_admin/main.dart';

class EmployeeCard extends StatelessWidget {
  EmployeeCard({this.model});
  // String image ;
  // String name;
  // String designation;
  final MyEmployee model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(10),
        color: MyApp.isdarkmode.value != true
            ? Colors.white
            : kContentColorLightTheme.withOpacity(0.1),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Employee()));
          },
          child: ListTile(
            leading: Material(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              color: MediaQuery.of(context).platformBrightness ==
                      Brightness.light
                  ? kPrimaryColor.withOpacity(0.1)
                  : kContentColorLightTheme.withOpacity(0.1),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    model.image,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            title: Text(model.name),
            subtitle: Text(model.designation),
          ),
        ),
      ),
    );
  }
}
