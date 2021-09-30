import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Announcemets/Components/card.dart';
import 'package:hr_admin/HR_app/Screens/Announcemets/Components/model.dart';
import 'package:hr_admin/HR_app/app_bar.dart';

class Announcements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(titilee: 'Announcements'),
      body: Container(
        child: ListView.builder(
          itemCount: myAnnouncement.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: AnnouncementCard(model: myAnnouncement[index],fulltext: true,)//myAnnouncement[index],
            );
          },
        ),
      ),
    );
  }
}
