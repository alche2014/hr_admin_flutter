import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hr_admin/HR_app/Screens/Employee/components/employee_card.dart';

// ignore: must_be_immutable
class SlidabldWidget extends StatelessWidget {
  SlidabldWidget({this.index, this.model});
  var index;
  var model;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionExtentRatio: 0.14,
      actionPane: SlidableBehindActionPane(),
      child: EmployeeCard(model: model[index]),
      secondaryActions: [
        Theme(
          data: Theme.of(context).copyWith(
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
          child: IconSlideAction(
            iconWidget: Material(
              elevation: 3,
              color: Colors.green[300],
              borderRadius: BorderRadius.circular(100),
              child: InkWell(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ));
                },
                splashColor: Colors.grey,
                radius: 30,
                highlightColor: Colors.grey.withOpacity(0.6),
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    // color: Colors.green[300],
                  ),
                  child: Icon(
                    Icons.edit_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // icon: Icons.delete_forever_rounded,
            // onTap:,
          ),
        ),
      ],
    );
  }
}
