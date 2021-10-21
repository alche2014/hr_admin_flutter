import 'package:flutter/material.dart';

//----------------Chip Maker-------------------------
class Chipmaker1 extends StatefulWidget {
  static List<String> choosed1 = [
    'Adobe Illustrator',
    'Web Design',
    'Adobe Photoshope',
    'Graphic Design',
    'Page Layout',
    'Branding',
    'Figma'
  ];
  @override
  _Chipmaker1State createState() => _Chipmaker1State();
}

class _Chipmaker1State extends State<Chipmaker1> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: List<Widget>.generate(Chipmaker1.choosed1.length, (int index) {
        return Chip(
          label: Text(Chipmaker1.choosed1[index]),
          onDeleted: () {
            setState(() {
              Chipmaker1.choosed1.removeAt(index);
            });
          },
        );
      }),
    );
  }
}
