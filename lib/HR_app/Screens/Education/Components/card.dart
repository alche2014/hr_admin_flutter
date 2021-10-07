import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Education/Components/model.dart';

class EducationCard extends StatelessWidget {
  EducationCard({this.model});
  final MyEducation model;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 1,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
     
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(model.image,
              width: 30, height: 30),
          SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.text1,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text('Degree: ',
                        style: TextStyle(color: Colors.grey[600])),
                    Text(model.text2,
                        style: TextStyle(fontSize: 13, color: Colors.grey[500]))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
