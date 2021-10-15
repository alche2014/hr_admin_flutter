// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Personal_Information/form.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class FormTopTile extends StatefulWidget {
  bool trailing_edit;
  var press;

  FormTopTile({this.press, this.trailing_edit});

  @override
  State<FormTopTile> createState() => _FormTopTileState();
}

class _FormTopTileState extends State<FormTopTile> {
  // String _imagePath;

  @override
  // void initState() {
  //   super.initState();
  //   loadImage().then((value) {
  //     setState(() {
  //       _imagePath = value;
  //     });
  //   });
  // }

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FutureBuilder (
                // initialData: CircularProgressIndicator(),
                future: loadImage(),
                
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  print(snapshot.toString());
                  return 
                  CircularPercentIndicator(
                    radius: 88,
                    lineWidth: 5,
                    backgroundColor: Colors.white,
                    percent: 0.50,
                    progressColor: kPrimaryColor,
                    circularStrokeCap: CircularStrokeCap.round,
                    animation: true,
                    center: Stack(
                      children: [
                        snapshot.hasData
                            ? CircleAvatar(
                                radius: 40,
                                child: ClipRRect(
                                  clipBehavior: Clip.antiAlias,
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image(
                                    image: FileImage(File(snapshot.data)),
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : CircleAvatar(
                                radius: 50,
                                child: ClipRRect(
                                  clipBehavior: Clip.antiAlias,
                                  borderRadius: BorderRadius.circular(100),
                                  child: //image != null
                                      // ? Image.file(image)
                                      // :
                                      Image.asset(
                                    "assets/images/user.png",
                                    height: 114,
                                    width: 115,
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
                  );
                },
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
          if (widget.trailing_edit == true)
            Material(
              color: Colors.transparent,
              child: InkWell(
                // borderRadius: BorderRadius.circular(100),
                // radius: 30,
                // highlightColor: kPrimaryColor,
                // hoverColor: Colors.grey,autofocus: true,splashColor: Colors.white,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => widget.press));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Text(
                    //   'Edit',
                    //   style: TextStyle(color: kPrimaryColor),
                    // ),
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          if (widget.trailing_edit == false)
            Container(
              height: 10,
              width: 10,
            ),
        ],
      ),
    );
  }
}
