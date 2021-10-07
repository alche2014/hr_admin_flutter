// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';

class EmployesCard extends StatelessWidget {
  var next;
  String text;
  EmployesCard(this.text, this.next);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Material(
        elevation: 3,
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Theme.of(context).scaffoldBackgroundColor
            : Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => next));
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? kPrimaryColor.withOpacity(0.1)
                              : kContentColorLightTheme.withOpacity(0.1),
                      radius: 30,
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.red[800],
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(text),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? kPrimaryColor.withOpacity(0.1)
                        : kContentColorLightTheme,
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
