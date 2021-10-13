import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CreateLocation/screen_create_location.dart';
import 'package:hr_admin/HR_app/Screens/OfficeLocation/Components/card.dart';
import 'package:hr_admin/HR_app/Screens/OfficeLocation/Components/model.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class OfficeLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Office Location',true,'tune',true),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.builder(
          itemCount: myOfficeLocation.length,
          itemBuilder: (_, index) {
            return OfficeLocationCard(
              model: myOfficeLocation[index],
            );
          },
        ),
      ),
      //-----------------Floating action button---------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CreateLocation()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: kPrimaryColor,
        //
      ),
    );
  }
}
