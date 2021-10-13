import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CreateDepartment/create_department.dart';
import 'package:hr_admin/HR_app/Screens/CreateEmployee/screen_create_employee.dart';
import 'package:hr_admin/HR_app/Screens/Departments/Components/card.dart';
import 'package:hr_admin/HR_app/Screens/Departments/Components/model.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';


class Departments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Departments',true,'tune',true),
      body: ListView.builder(
        itemCount: myDepartment.length,
        itemBuilder: (_, index) {
          return DepartmentCard(
            model: myDepartment[index],
          );
        },
      ),
      //-----------------Floating action button---------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateDepartment()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
