import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Messages/components/model.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/message_screen.dart';

import 'chatcard.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatsData.length,
      itemBuilder: (context, index) => ChatCard(
        chat: chatsData[index],
        press: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MessagesScreen()));
        },
      ),
    );
  }
}
