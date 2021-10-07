import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/OfficeLocation/Components/model.dart';

class OfficeLocationCard extends StatelessWidget {
  OfficeLocationCard({this.model});
  final MyOfficeLocation model;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.grey[400],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            model.text1,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(model.text2),
          SizedBox(height: 10),
          Image.asset(model.map),
        ],
      ),
    );
  }
}
