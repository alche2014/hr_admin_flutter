import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CreateEmployee/screen_create_employee.dart';
import 'package:hr_admin/HR_app/Screens/Employee/components/model.dart';
import 'package:hr_admin/HR_app/Screens/Employee/components/slidable_widget.dart';
import 'package:hr_admin/HR_app/Screens/Notification/screen_notification.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Employes1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//-----------------------Appbar--------------------
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Employes'),
        backgroundColor: kPrimaryColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
            ),
            onPressed: () {
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => Notifications()));
            },
          ),
        ],
      ),

      body: 
                ListView.builder(
                  // shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: myEmployee.length,
                  itemBuilder: (_, index) {
                    return SlidabldWidget(
                      index: index,
                      model: myEmployee,
                    );
                  },
                ),
              
      //-----------------Floating action button---------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CreateEmployee()));
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
