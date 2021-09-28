import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hr_admin/HR_app/Screens/Employee/components/model.dart';
import 'package:hr_admin/HR_app/Screens/Employee/components/employee_card.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Employee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//-----------------------Appbar--------------------
      appBar: AppBar(
        title: Text('Employee'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => Notifications()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
            ),
            onPressed: () {
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => Notifications()));
            },
          ),
        ],
      ),

      body: ListView(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: ExpansionTile(
              title: Text('Ecom Team'),
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: myEmployee.length,
                  itemBuilder: (_, index) {
                    return Slidable(
                      actionPane: SlidableBehindActionPane(),
                      child: EmployeeCard(model: myEmployee[index]),
                      secondaryActions: [
                        IconSlideAction(
                          icon: Icons.delete_forever_rounded,
                          onTap: () {},
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: ExpansionTile(
              title: Text('Ecom Team'),
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: myEmployee.length,
                  itemBuilder: (_, index) {
                    return Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      child: EmployeeCard(model: myEmployee[index]),
                      secondaryActions: [
                        IconSlideAction(
                          icon: Icons.delete_forever_rounded,
                          onTap: () {},
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: ExpansionTile(
              title: Text('Ecom Team'),
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: myEmployee.length,
                  itemBuilder: (_, index) {
                    return Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      child: EmployeeCard(model: myEmployee[index]),
                      secondaryActions: [
                        IconSlideAction(
                          icon: Icons.delete_forever_rounded,
                          onTap: () {},
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      //-----------------Floating action button---------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
