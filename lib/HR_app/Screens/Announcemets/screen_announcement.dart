import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Announcemets/Components/card.dart';
import 'package:hr_admin/HR_app/Screens/Announcemets/Components/model.dart';
import 'package:hr_admin/HR_app/Screens/CreateAnnouncement/screen_create_announcement.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Announcements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Announcement',false,'notification',true),
      body: Container(
        child: ListView.builder(
          itemCount: myAnnouncement.length,
          itemBuilder: (_, index) {
            return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: AnnouncementCard(
                  model: myAnnouncement[index],
                  fulltext: true,
                ));
          },
        ),
      ),
      //-----------------Floating action button---------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CreateAnnouncement()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
