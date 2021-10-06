import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/components/ImageMessage.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/components/TextMessage.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/components/model.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Messages extends StatelessWidget {
  Messages({Key key, @required this.message}) : super(key: key);
  final MyMessage message;
  String data;
  @override
  Widget build(BuildContext context) {
    Widget messageContaint(MyMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
          break;
        case ChatMessageType.image:
          return ImageMessage(message: message);
          break;
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment: message.issender==true
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          if (!message.issender)
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
            // TextMessage(message: message,),
          messageContaint(message),
          // if (message.issender) MessageDotStatus(message: message),
        ],
      ),
    );
  }
}

// class MessageDotStatus extends StatelessWidget {
//   final MyMessage message;

//   const MessageDotStatus({Key key, this.message}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // Color dotcolor(ChatMessage message) {
//     //   switch (message.messageStatus) {
//     //     case MessageStatus.not_sent:
//     //       return kErrorColor;
//     //       break;
//     //     case MessageStatus.not_view:
//     //       return Theme.of(context).textTheme.bodyText1.color.withOpacity(0.1);
//     //       break;
//     //     case MessageStatus.viewed:
//     //       return kPrimaryColor;
//     //       break;
//     //     default:
//     //       return Colors.transparent;
//     //   }
//     // }

//     return Container(
//       margin: EdgeInsets.only(left: kDefaultPadding / 2),
//       height: 12,
//       width: 12,
//       decoration: BoxDecoration(
//         color: kPrimaryColor,
//         // color: dotcolor(message),
//         shape: BoxShape.circle,
//       ),
//       child: Icon(
//         // message.messageStatus == MessageStatus.not_sent
//         //     ? Icons.close:
//             Icons.done,
//         size: 8,
//         color: Theme.of(context).scaffoldBackgroundColor,
//       ),
//     );
//   }
// }
