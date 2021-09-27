import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class FormTopTile extends StatelessWidget {
  // FormTopTile({this.image, this.name, this.designation});
  // String image;
  // String name;
  // String designation;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                radius: 87,
                lineWidth: 3,
                backgroundColor: Colors.white,
                percent: 0.50,
                progressColor: kPrimaryColor,
                circularStrokeCap: CircularStrokeCap.round,
                animation: true,
                center: Stack(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: ClipRRect(
                        clipBehavior: Clip.antiAlias,
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage('assets/images/user1.png'),
                          width: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image(
                        image: AssetImage('assets/images/Vector.png'),
                        width: 20,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      right: 3,
                      child: Icon(
                        Icons.done,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name hare',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Front end UI designer',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {
              // Navigator.push(
              // context,
              // MaterialPageRoute(
              //     builder: (context) => PersonalInformation2()));
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Edit',
                  style: TextStyle(color: kPrimaryColor),
                ),
                Icon(
                  Icons.edit,
                  color: kPrimaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
