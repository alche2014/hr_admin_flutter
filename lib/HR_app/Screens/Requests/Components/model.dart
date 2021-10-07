// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

enum ReqStatus { pending, approved, rejected }

class MyRequests extends StatelessWidget {
  MyRequests(
      {this.text1,
      this.text2,
      this.date,
      this.image,
      this.designation,
      this.name,
      this.status});

  String text1;
  String text2;
  String name;
  String designation;
  DateTime date;
  String image;
  // bool status;
  ReqStatus status;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

String content =
    'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';
List<MyRequests> myRequests = [
  MyRequests(
    text1: 'Request For Laptop',
    name: 'Lee Williomson',
    text2: content,
    date: DateTime(2020, 10, 20, 14, 01), //'14:01 20/10/2020'
    image: 'assets/images/user1.png',
    designation: 'Designation',
    status: ReqStatus.pending,
  ),
  MyRequests(
    text1: 'Request For Laptop',
    name: 'Lee Williomson',
    text2: content,
    date: DateTime(2020, 10, 20, 14, 01), //'14:01 20/10/2020'
    image: 'assets/images/user1.png',
    designation: 'Designation',
    status: ReqStatus.pending,
  ),
  MyRequests(
    text1: 'Request For Laptop',
    name: 'Lee Williomson',
    text2: content,
    date: DateTime(2020, 10, 20, 14, 01), //'14:01 20/10/2020'
    image: 'assets/images/user1.png',
    designation: 'Designation',
    status: ReqStatus.pending,
  ),
];
