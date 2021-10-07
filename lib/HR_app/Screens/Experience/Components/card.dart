import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Experience/Components/model.dart';

class ExperienceCard extends StatelessWidget {
  ExperienceCard({this.model});
  final MyExperience model;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 1,
       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
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
                    Text(model.text2 + ' ',
                        style: TextStyle(color: Colors.grey[600])),
                    Text(model.text3,
                        style: TextStyle(fontSize: 13, color: Colors.grey[500]))
                  ],
                ),
                Text(model.text4 + ' ' + model.text5,
                    style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          )
        ],
      ),
    );
  }
}
