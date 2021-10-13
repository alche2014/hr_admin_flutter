
import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/components/model.dart';
import 'package:hr_admin/HR_app/constants.dart';

class AudioMessage extends StatelessWidget {
  final MyMessage message;

  const AudioMessage({Key key, this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      // height: 30,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: message.issender ?Colors.blue:  kPrimaryColor.withOpacity(0.05),
      ),
      child: Row(
        children: [
          Icon(Icons.play_arrow,
              color: message.issender ? Colors.white : kPrimaryColor),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: message.issender? Colors.white : kPrimaryColor.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: kPrimaryColor, shape: BoxShape.circle),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            '0.37',
            style: TextStyle(
                fontSize: 12, color: message.issender ? Colors.white : null),
          ),
        ],
      ),
    );
  }
}
