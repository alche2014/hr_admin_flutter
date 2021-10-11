import 'package:flutter/material.dart';

enum NotificationStatus { Approved, Rejected, Announcement }

class NotificationModel {
  NotificationModel({this.content, this.date, this.status});

  String content;
  DateTime date;
  NotificationStatus status;
}
// var newFormat = DateFormat("yy-MM-dd");
// String updatedDt = newFormat.format(dt);

List<NotificationModel> notificationlist = [
  NotificationModel(
    content: 'your Leave Request is Approved',
    date: DateTime.parse('2021-09-09'),
    // DateTime dt = DateTime.parse('2020-01-02 03:04:05');
    // date: DateTime.now(),
    status: NotificationStatus.Approved,
  ),
  NotificationModel(
    content: 'your Leave Request is Rejected',
    date: DateTime.parse('2019-10-12'),
    // date: DateTime.now(),
    status: NotificationStatus.Rejected,
  ),
  NotificationModel(
    content: 'your Leave Request is Approved',
    date: DateTime.parse('2019-10-13'),
    // date: DateTime.now(),
    status: NotificationStatus.Announcement,
  ),
  NotificationModel(
    content: 'your Leave Request is Approved',
    date: DateTime.parse('2019-10-15'),
    // date: DateTime.now(),
    status: NotificationStatus.Approved,
  ),
  NotificationModel(
    content: 'your Leave Request is Approved',
    date: DateTime.parse('2019-10-20'),
    // date: DateTime.now(),
    status: NotificationStatus.Approved,
  ),
  NotificationModel(
    content: 'your Leave Request is Rejected',
    date: DateTime.parse('2021-09-09'),
    // date: DateTime.now(),
    status: NotificationStatus.Rejected,
  ),
  
];
