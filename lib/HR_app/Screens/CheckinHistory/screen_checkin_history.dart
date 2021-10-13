import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CheckinHistory/Components/checkin_history_card.dart';
import 'package:hr_admin/HR_app/Screens/CheckinHistory/Components/linear_bar.dart';
import 'package:hr_admin/HR_app/Screens/CheckinHistory/Components/models.dart';
import 'package:hr_admin/HR_app/app_bar.dart';

class CheckinHistory extends StatefulWidget {
  @override
  _CheckinHistoryState createState() => _CheckinHistoryState();
}

class _CheckinHistoryState extends State<CheckinHistory> {
  String dropdownValue = 'Jan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Checkin History',true,'notification',true),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    iconSize: 24,
                    elevation: 16,
                    // hint: Text('today'),
                    // style: const TextStyle(color: Colors.deepPurple),
                    onChanged: (String newValue) {
                      setState(() {
                        // print(dropdownValue);
                        dropdownValue = newValue;
                        // print(dropdownValue);
                      });
                    },
                    items: ['Jan', 'Fab', 'Mar', 'Apral']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            LinearBar(''),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: mycheck.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    child: CheckinHistoryCard(model: mycheck[index],),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
