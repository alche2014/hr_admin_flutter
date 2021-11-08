import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CreateRole/screen_create_role.dart';
import 'package:hr_admin/HR_app/Screens/Roles_&_Permissions/Components/model.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:hr_admin/main.dart';

class ScreenRolesAndPermmissions extends StatelessWidget {
  static ValueNotifier<int> rolesList = ValueNotifier(myRoleAndPermissions.length);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context, "Roles & Permissions", true, 'null', true),
      body: ValueListenableBuilder(
        valueListenable: rolesList,
        builder: (context, value,_) {
          return ListView.builder(
            itemCount: myRoleAndPermissions.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => CreateRole(model: myRoleAndPermissions[index],)));
                },
                child: roleAndpermisionsCard(myRoleAndPermissions[index]),
              );
            },
          );
        }
      ),
      //-----------------Floating action button---------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CreateRole()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: kPrimaryColor,
      ),
    );
  }

  Container roleAndpermisionsCard(MyRoleAndPermissions model) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      // height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: MyApp.isdarkmode.value == false ? Colors.grey : Colors.white,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(model.text),
          Text(
            'Edit',
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
