import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearBar extends StatelessWidget {
  LinearBar(this.title);
  final String title;

  var totalemployee = 170;
  var ontime = 70;
  var late = 70;
  var absent = 30;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        color: MediaQuery.of(context).platformBrightness == Brightness.light
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
                style: TextStyle(
                    color: Colors.red[800], fontWeight: FontWeight.bold),
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
                  Text('On Time',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Late', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(absent.toString(),
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                  Text(ontime.toString(),
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold)),
                  Text(late.toString(),
                      style: TextStyle(
                          color: Colors.red[800], fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 25,
              ),
//----------------------------Bar----------------------------------//

              FittedBox(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300],
                    
                  ),
                  height: 15,
                  width: MediaQuery.of(context).size.width * 1,
                  
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: MediaQuery.of(context).size.width * ((absent / totalemployee * 100) / 100),
                        color: Colors.blue,
                      ),
                      Container(
                        height: 15,
                        width: MediaQuery.of(context).size.width * ((ontime / totalemployee * 100)/ 100),
                        color: Colors.green,
                      ),
                      Container(
                        height: 15,
                        width: MediaQuery.of(context).size.width * ((late / totalemployee * 100)/ 100),
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
              )
              // FittedBox(
              //   child: Stack(
              //     children: [
              //       LinearPercentIndicator(
              //         // width: 300,
              //         width: MediaQuery.of(context).size.width * 0.9,
              //         lineHeight: 12,
              //         percent: 0.2,
              //         backgroundColor: Colors.grey[200],
              //         progressColor: Colors.blue[300],
              //       ),
              //       LinearPercentIndicator(
              //         // width: 300,
              //         width: MediaQuery.of(context).size.width * 0.9,
              //         lineHeight: 12,
              //         percent: 0.9,
              //         backgroundColor: Colors.transparent,
              //         progressColor: Colors.red[700],
              //       ),
              //       LinearPercentIndicator(
              //         // width: 300,
              //         width: MediaQuery.of(context).size.width * 0.9,
              //         lineHeight: 12,
              //         percent: 0.7,
              //         backgroundColor: Colors.transparent,
              //         progressColor: Colors.green[400],
              //       ),
              //       LinearPercentIndicator(
              //         // width: 300,
              //         width: MediaQuery.of(context).size.width * 0.9,
              //         lineHeight: 12,
              //         percent: 0.2,
              //         backgroundColor: Colors.transparent,
              //         progressColor: Colors.blue[300],
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
