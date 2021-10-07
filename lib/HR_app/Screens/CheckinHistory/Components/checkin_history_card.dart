import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CheckinHistory/Components/models.dart';
import 'package:hr_admin/HR_app/constants.dart';

class CheckinHistoryCard extends StatelessWidget {
  CheckinHistoryCard({this.model
      // this.date,
      // this.checkinTime,
      // this.checkoutTime,
      // this.islate,
      // this.tTime
      });
  // bool islate;
  // String checkinTime;
  // String checkoutTime;
  // String date;
  // String tTime;
  final MyCheckinHistory model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Material(
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.white
            : kContentColorLightTheme.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        elevation: 3,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          hoverColor: Colors.red,
          // canRequestFocus: true,
          // splashColor: Colors.red,
          // highlightColor: Colors.red,
          onTap: () {},
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              //   boxShadow: [BoxShadow(
              //   color: Colors.grey,
              //   blurRadius: 1,
              //   // spreadRadius: 0,
              //   // offset: Offset(0, 0)
              // )],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // SizedBox(width: 10),
                        Text(
                          '02-05-2021 Thu',
                          style: TextStyle(
                              color: Colors.red[800],
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      child: Text(
                        model.islate == true ? 'Late' : 'On time',
                        style: TextStyle(color: Colors.black),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: model.islate == true
                              ? Colors.red[50]
                              : Colors.green[50]),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text('Checkin: '),
                    Text(model.checkinTime),
                    Spacer(),
                    Text('Checkout: '),
                    Text(model.checkoutTime),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Total Working Hours: '),
                    Text(model.tTime),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
