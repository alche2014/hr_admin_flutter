
import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Requests/Components/model.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:intl/intl.dart';

class RequestsCard extends StatefulWidget {
  RequestsCard({this.model});
  final MyRequests model;

  @override
  _RequestsCardState createState() => _RequestsCardState();
}

class _RequestsCardState extends State<RequestsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        elevation: 3,
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.white
            : kContentColorLightTheme.withOpacity(0.1),
        child: Container(
          //--------------card body--------------------
          // margin: const EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //-------------title and view button------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.model.text1,
                    style: TextStyle(
                      color: Colors.red[800], //color red
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => TeamRequest2(
                      //               model: widget.model,
                      //             )));
                    },
                    child: Text(
                      'View',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 10.0),
//-------------User Name-------------------
              // Text(
              //   widget.model.name,
              //   style: TextStyle(
              //       color: Colors.red[800],
              //       fontSize: 15,
              //       fontWeight: FontWeight.bold),
              // ),
              // SizedBox(height: 10),
              //----------------------message--------------------
              Text(
                widget.model.text2,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20),
              Text(
                //model.date.toString(),
                DateFormat()
                    .add_jm()
                    .add_yMd()
                    .format(widget.model.date)
                    .toString(),
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              if (widget.model.status == ReqStatus.pending)
                //---------------------buttons---------------------
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {setState(() {
                          widget.model.status = ReqStatus.rejected;
                        });},
                      child: Text('Reject'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widget.model.status = ReqStatus.approved;
                        });
                      },
                      child: Text('Approve'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              if (widget.model.status != ReqStatus.pending)
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: widget.model.status == ReqStatus.approved
                        ? Color(0xffD6FBE0)
                        : Color(0xffF8E7E9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      widget.model.status == ReqStatus.approved
                      ? 'Approved'
                      : 'Rejected',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
