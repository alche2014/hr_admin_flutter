import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1,color: Colors.grey[300])
        ),
        padding: EdgeInsets.all(20),
        child: Text(
            'This is HR admin panal, ready to use... This is HR admin panal  This is HR admin panal, ready to use...  This is HR admin panal This is HR admin panal, ready to use... This is HR admin panal This is HR admin panal This is HR admin panal, ready to use... This is HR admin panal, ready to use... This is HR admin panal This is HR admin panal This is HR admin panal, ready to use... This is HR admin panal This is HR admin panal, ready to use... This is HR admin panal This is HR admin panal, ready to use... This is HR admin panal This is HR admin panal, ready to use... This is HR admin panalv This is HR admin panal This is HR admin panal, ready to use... This is HR admin panal, ready to use... This is HR admin panal, ready to use... This is HR admin panal, ready to use... This is HR admin panal, ready to use...'),
      ),
    );
  }
}
