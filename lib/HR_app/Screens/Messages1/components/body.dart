import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/components/Message.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/components/chat_input_field.dart';
import 'package:hr_admin/HR_app/Screens/Messages1/components/model.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:intl/intl.dart';

class Body extends StatelessWidget with ChangeNotifier {
  
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Expanded(
              child: GroupedListView<MyMessage, DateTime>(
                floatingHeader: true,
                elements: myMsg,
                // groupBy: (object) => object.date,
                 groupBy: (MyMessage element) => DateTime(
                      element.date.year, element.date.month, element.date.day),
                // groupComparator: (value1, value2) => value2.compareTo(value1),
                // itemComparator: (item1, item2) =>
                //     item1.name.compareTo(item2.name),
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
                      // elevation: 8.0,
                      // margin:
                      //     EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Messages(message: element),
                  ));
                  //   child: Container(
                  //     child: ListTile(
                  //       contentPadding: EdgeInsets.symmetric(
                  //           horizontal: 20.0, vertical: 10.0),
                  //       leading: Icon(Icons.account_circle),
                  //       title: Text(element.name),
                  //       subtitle: Text(element.text),
                  //       trailing: Icon(Icons.arrow_forward),
                  //     ),
                  //   ),
                  // );
                },
              ),
              // ListView.builder(
              //   itemCount: demeChatMessages.length,
              //   itemBuilder: (context, index) => Message(
              //     message: demeChatMessages[index],
              //   ),
              // ),
            ),
            ChatInputField()
          ],
        );
  }
}
