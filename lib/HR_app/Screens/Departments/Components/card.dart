import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Departments/Components/model.dart';

const kPrimaryRed = Color(0xffC53B4B);

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
              TextButton(
                onPressed: () {
                  showDialog(
                    //showdialog on Apply now
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                      // backgroundColor: Colors.grey[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(''),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(Icons.close)),
                        ],
                      ), //on which popup pops
                      content: Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/cation.png', height: 92),
                            Text('Are you sure you want to delete Department',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18)),
                            Row(children: [
                              Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      elevation: 0,
                                    ),
                                    child: Text(
                                      'CANCEL',
                                      style: TextStyle(color: kPrimaryRed),
                                    )),
                              ),
                              Expanded(
                                child: ElevatedButton(
                                    onPressed: () {
                                      newDialog(context);
                                    },
                                    child: Text('DELETE')),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Text(
                  'Delete',
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

Future<dynamic> newDialog(BuildContext context) {
  return showDialog(
    //showdialog on Apply now
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      // backgroundColor: Colors.grey[100],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(''),
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close)),
        ],
      ), //on which popup pops
      content: Container(
        height: 250,
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/cation.png', height: 92),
            SizedBox(height: 8),
            Text('Some Employees belongs to this department',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
                'Assign new department to those employees then perform this action',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12)),
            Expanded(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                  ),
                  child: Text(
                    'CANCEL',
                    style: TextStyle(color: kPrimaryRed),
                  )),
            ),
          ],
        ),
      ),
    ),
  );
}
