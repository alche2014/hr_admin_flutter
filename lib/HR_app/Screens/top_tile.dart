import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class FormTopTile extends StatelessWidget {
  // FormTopTile({this.image, this.name, this.designation});
  // String image;
  // String name;
  // String designation;
  bool trailing_edit;
  var press;
  FormTopTile({this.press, this.trailing_edit});

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
          if (trailing_edit == true)
            Material(
              color: Colors.transparent,
              child: InkWell(
                // borderRadius: BorderRadius.circular(100),
                // radius: 30,
                // highlightColor: kPrimaryColor,
                // hoverColor: Colors.grey,autofocus: true,splashColor: Colors.white,
                onTap: () {
                  // Navigator.push(
                  // context,
                  // MaterialPageRoute(
                  //     builder: (context) => press()));
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
            ),
          if (trailing_edit == false)
            Container(
              height: 10,
              width: 10,
            ),
        ],
      ),
    );
  }
}
