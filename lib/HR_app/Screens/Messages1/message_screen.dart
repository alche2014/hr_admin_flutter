import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/components/body.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/components/model.dart';
import 'package:hr_admin/HR_app/constants.dart';

class MessagesScreen extends StatelessWidget with ChangeNotifier {
  
  static ValueNotifier<int> length = ValueNotifier(myMsg.length);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ValueListenableBuilder(
        valueListenable: length,
        builder: (context, value, _) {
          return Body();
        },
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user_2.png'),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Stack Designers',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '7 Online, form 12 people',
                style: TextStyle(fontSize: 12),
              ),
            ],
          )
        ],
      ),
      actions: [
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        SizedBox(
          width: 10)
      ],
    );
  }
}
