import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Requests/Components/model.dart';
import 'package:hr_admin/HR_app/Screens/Requests/Components/team_request1_card.dart';
import 'package:hr_admin/HR_app/app_bar.dart';

class Requests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Requests',true,'notification',true),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Filter',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 2),
                      Icon(Icons.tune),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: myRequests.length,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return RequestsCard(model:  myRequests[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
