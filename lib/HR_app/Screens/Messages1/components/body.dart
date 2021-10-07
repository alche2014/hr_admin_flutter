import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/components/Message.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/components/chat_input_field.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/components/model.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget with ChangeNotifier {
  
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Expanded(
              child: GroupedListView<MyMessage, DateTime>(
                floatingHeader: true,
                elements: myMsg,
                 groupBy: (MyMessage element) => DateTime(
                      element.date.year, element.date.month, element.date.day),
                reverse: true,
                order: GroupedListOrder.DESC,
                useStickyGroupSeparators: true,
                groupHeaderBuilder: (MyMessage element) => Container(
                    height: 40,
                    child: Align(
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.8),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${DateFormat.yMMMd().format(element.date)}',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                itemBuilder: (c, element) {
                  return Container(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Messages(message: element),
                  ));
                },
              ),
            ),
            ChatInputField()
          ],
        );
  }
}
