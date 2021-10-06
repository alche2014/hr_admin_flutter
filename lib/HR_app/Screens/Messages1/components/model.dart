import 'dart:io';

import 'package:flutter/material.dart';

enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class MyMessage {
  String name;
  DateTime date;
  String text;
  bool issender;
  ChatMessageType messageType;
  MessageStatus messageStatus;
  File image;
  MyMessage({
    this.name,
    this.date,
    this.text,
    @required this.issender,
    this.messageStatus,
    this.messageType,
    this.image,
  });
}

var count = myMsg.length;
List<MyMessage> myMsg = [
  new MyMessage(
    name: 'anees',
    date: DateTime(2020, 6, 24, 9, 25),
    text: 'Hi Sajol',
    issender: true,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'ali',
    date: DateTime(2020, 6, 24, 9, 30),
    text: 'Hello, How are you?',
    issender: false,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'jhon',
    date: DateTime(2020, 6, 24, 9, 33),
    text: 'Error happend',
    issender: true,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'Will',
    date: DateTime(2020, 6, 25, 9, 25),
    text: 'This looks great man!!',
    issender: false,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'Miranda',
    date: DateTime(2020, 6, 26, 1, 25),
    text: 'Glad you like it',
    issender: true,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'Danny',
    date: DateTime(2020, 6, 26, 9, 25),
    text: 'This looks great man!!',
    issender: false,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'anees',
    date: DateTime(2020, 6, 26, 10, 25),
    text: 'Hi Sajol',
    issender: true,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'ali',
    date: DateTime(2020, 6, 27, 11, 01),
    text: 'Hello, How are you?',
    issender: false,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'jhon',
    date: DateTime(2020, 6, 28, 1, 25),
    text: 'Error happend',
    issender: true,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'Will',
    date: DateTime(2020, 6, 28, 2, 25),
    text: 'This looks great man!!',
    issender: false,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'Miranda',
    date: DateTime(2020, 6, 28, 2, 28),
    text: 'Glad you like it',
    issender: true,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'Danny',
    date: DateTime(2020, 6, 28, 2, 35),
    text: 'This looks great man!!',
    issender: false,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'anees',
    date: DateTime(2020, 6, 28, 2, 45),
    text: 'Hi Sajol',
    issender: true,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'ali',
    date: DateTime(2020, 6, 28, 9, 25),
    text: 'Hello, How are you?',
    issender: false,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'jhon',
    date: DateTime(2020, 6, 29, 9, 25),
    text: 'Error happend',
    issender: true,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'Will',
    date: DateTime(2020, 6, 29, 9, 35),
    text: 'This looks great man!!',
    issender: false,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'Miranda',
    date: DateTime(2020, 6, 29, 9, 36),
    text: 'Glad you like it',
    issender: true,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
  new MyMessage(
    name: 'Danny',
    date: DateTime(2020, 6, 29, 9, 45),
    text: 'This looks great man!!',
    issender: false,
    messageType: ChatMessageType.text,
    // messageStatus: MessageStatus.viewed,
  ),
];


// String checkdate = '0';
// String currentdate = '1-sep-2021';

// class ChatMessage {
//   String text;
//   ChatMessageType messageType;
//   MessageStatus messageStatus;
//   bool isSender;
//   String date;

//   ChatMessage({
//     this.text,
//     this.messageType,
//     this.messageStatus,
//     this.isSender,
//     this.date,
//   });
// }

// List<ChatMessage> demeChatMessages = [
//   ChatMessage(
//     text: "Hi Sajol,",
//     messageType: ChatMessageType.text,
//     messageStatus: MessageStatus.viewed,
//     isSender: false,
//     date: '15-jul-2021',
//   ),
//   ChatMessage(
//     text: "Hello, How are you?",
//     messageType: ChatMessageType.text,
//     messageStatus: MessageStatus.viewed,
//     isSender: true,
//     date: '23-jul-2021',
//   ),
//   ChatMessage(
//     text: "",
//     messageType: ChatMessageType.audio,
//     messageStatus: MessageStatus.viewed,
//     isSender: false,
//     date: '1-aug-2021',
//   ),
//   ChatMessage(
//     text: "",
//     messageType: ChatMessageType.video,
//     messageStatus: MessageStatus.viewed,
//     isSender: true,
//     date: '11-aug-2021',
//   ),
//   ChatMessage(
//     text: "Error happend",
//     messageType: ChatMessageType.text,
//     messageStatus: MessageStatus.not_sent,
//     isSender: true,
//     date: '19-aug-2021',
//   ),
//   ChatMessage(
//     text: "This looks great man!!",
//     messageType: ChatMessageType.text,
//     messageStatus: MessageStatus.viewed,
//     isSender: false,
//     date: '29-aug-2021',
//   ),
//   ChatMessage(
//     text: "Glad you like it",
//     messageType: ChatMessageType.text,
//     messageStatus: MessageStatus.not_view,
//     isSender: true,
//     date: '1-sep-2021',
//   ),
// ];
