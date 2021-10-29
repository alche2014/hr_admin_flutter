import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Skills1/chip_maker1.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Skills1 extends StatefulWidget {
  @override
  _Skills1State createState() => _Skills1State();
}

class _Skills1State extends State<Skills1> {
  TextEditingController _textcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context, 'Skills', true, 'notification', true),
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
                    // onFieldSubmitted: (value) {
                    //   setState(() {
                    //     if (_textcontroller.text.isNotEmpty)
                    //       Chipmaker1.choosed1.add(_textcontroller.text);
                    //   });
                    //   _textcontroller.clear();
                    // },
                  ),
                  //-------------------chipmaker----------------------
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (Chipmaker1.choosed1
                            .contains(_textcontroller.text)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Already in List'),
                            ),
                          );
                        } else if (_textcontroller.text.isNotEmpty) {
                          Chipmaker1.choosed1.add(_textcontroller.text);
                        }
                      });
                      _textcontroller.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Text(
                      'Add Skill',
                    ),
                  ),
                  SizedBox(height: 10),
                  if (Chipmaker1.choosed1.isNotEmpty)
                    Container(
                      child: Chipmaker1(),
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
                    if (Chipmaker1.choosed1.isNotEmpty)
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
