import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Departments/Components/model.dart';

class DepartmentCard extends StatelessWidget {
  DepartmentCard({this.model});

  final MyDepartment model;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        expandedAlignment: Alignment(-1, 0),
        title: Text(model.shifttime),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Total Member: ',
                    style: TextStyle(color: Colors.grey[600], fontSize: 15),
                  ),
                  Text(
                    model.text1,
                    style: TextStyle(color: Colors.grey[600]),
                  )
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Edit',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Text(
                  'Department Head: ',
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
                Text(
                  model.text2,
                  style: TextStyle(color: Colors.grey[600]),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Text(
                  'Create Date: ',
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
                Text(
                  model.text3,
                  style: TextStyle(color: Colors.grey[600]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
