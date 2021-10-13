import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Skills/chip_maker.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  TextEditingController _textcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context,'Skills',true,'notification',true),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.89,
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //--------------------textfield-----------------------------
                  TextFormField(
                    controller: _textcontroller,
                    decoration: TextFieldDecoration('Add Skills'),
                    onFieldSubmitted: (value) {
                      setState(() {
                        if (_textcontroller.text.isNotEmpty)
                          Chipmaker.choosed.add(_textcontroller.text);
                      });
                      _textcontroller.clear();
                    },
                  ),
                  SizedBox(height: 10),
                  if (Chipmaker.choosed.isNotEmpty)
                    Container(
                      child: Chipmaker(),
                    ),
                ],
              ),
              //------------------------Buttons------------------------
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if(Chipmaker.choosed.isNotEmpty)
                      Navigator.pop(context);
                    else
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Add some Skills'),
                    ),
                  );
                  },
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
