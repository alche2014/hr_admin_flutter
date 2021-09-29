import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearBar extends StatelessWidget {
  LinearBar(this.title);
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? Colors.white
                        : kContentColorLightTheme.withOpacity(0.1),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            
          ),
//.....................Text above Linear bar.................................

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    TextStyle(color: Colors.red[800], fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Absents',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('On Time', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Late', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('12',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                  Text('10',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold)),
                  Text('2',
                      style: TextStyle(
                          color: Colors.red[800], fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 25,
              ),
//----------------------------Bar----------------------------------//
              FittedBox(
                child: Stack(
                  children: [
                    LinearPercentIndicator(
                      // width: 300,
                      width: MediaQuery.of(context).size.width * 0.9,
                      lineHeight: 12,
                      percent: 0.2,
                      backgroundColor: Colors.grey[200],
                      progressColor: Colors.blue[300],
                    ),
                    LinearPercentIndicator(
                      // width: 300,
                      width: MediaQuery.of(context).size.width * 0.9,
                      lineHeight: 12,
                      percent: 0.9,
                      backgroundColor: Colors.transparent,
                      progressColor: Colors.red[700],
                    ),
                    LinearPercentIndicator(
                      // width: 300,
                      width: MediaQuery.of(context).size.width * 0.9,
                      lineHeight: 12,
                      percent: 0.7,
                      backgroundColor: Colors.transparent,
                      progressColor: Colors.green[400],
                    ),
                    LinearPercentIndicator(
                      // width: 300,
                      width: MediaQuery.of(context).size.width * 0.9,
                      lineHeight: 12,
                      percent: 0.2,
                      backgroundColor: Colors.transparent,
                      progressColor: Colors.blue[300],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
