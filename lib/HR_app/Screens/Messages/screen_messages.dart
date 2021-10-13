import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Messages/components/body.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Messages'),
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(1, 100),
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: TabBar(
              controller: _controller,
              indicatorWeight: 0,
              labelPadding: EdgeInsets.zero,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(15, 20, 80, 20),
              indicator: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              tabs: [
                Tab(
                  text: 'All chats',
                ),
                Tab(
                  text: 'Unread',
                ),
                Tab(
                  text: 'Groups',
                ),
                Tab(
                  text: 'Archive',
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(controller: _controller, children: [
        Body(),
        Text('1'),
        Text('2'),
        Text('3'),
      ]),
    );
  }
}
