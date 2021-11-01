import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Roles_&_Permissions/Components/model.dart';
import 'package:hr_admin/HR_app/Screens/Roles_&_Permissions/screen_roles&permissions.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class CreateRole extends StatefulWidget {
  CreateRole({this.model});
  MyRoleAndPermissions model;
  var _iscchecked1;
  var _iscchecked2;
  var _iscchecked3;
  var _iscchecked4;
  var _iscchecked5;
  var _iscchecked6;
  var _iscchecked7;
  var _iscchecked8;
  var _iscchecked9;
  var _iscchecked10;

  @override
  State<CreateRole> createState() => _CreateRoleState();
}

class _CreateRoleState extends State<CreateRole> {
  TextEditingController _controller = new TextEditingController();
  @override
  void initState() {
    // print("yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
    if (widget.model != null) {
      setState(() {
        _controller.text = widget.model.text;
        widget._iscchecked1 = widget.model.iscchecked1;
        widget._iscchecked2 = widget.model.iscchecked2;
        widget._iscchecked3 = widget.model.iscchecked3;
        widget._iscchecked4 = widget.model.iscchecked4;
        widget._iscchecked5 = widget.model.iscchecked5;
        widget._iscchecked6 = widget.model.iscchecked6;
        widget._iscchecked7 = widget.model.iscchecked7;
        widget._iscchecked8 = widget.model.iscchecked8;
        widget._iscchecked9 = widget.model.iscchecked9;
        widget._iscchecked10 = widget.model.iscchecked10;
      });
    } else {
      widget._iscchecked1 = false;
      widget._iscchecked2 = false;
      widget._iscchecked3 = false;
      widget._iscchecked4 = false;
      widget._iscchecked5 = false;
      widget._iscchecked6 = false;
      widget._iscchecked7 = false;
      widget._iscchecked8 = false;
      widget._iscchecked9 = false;
      widget._iscchecked10 = false;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: app_bar(context, 'Create Role', true, 'null', true),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //---------------------------textfield--------------------------
              TextField(
                controller: _controller,
                decoration: TextFieldDecoration('Role Title'),
                // onChanged: (value) {
                //   widget._controller.text = value;
                // },

                onSubmitted: (value) {
                  _controller.text = value;
                },
              ),
              SizedBox(height: 20),
              Text(
                'Permissoions',
                style: TextStyle(color: kPrimaryColor, fontSize: 14),
              ),
              //-----------------------Company Profile--------------------------
              SizedBox(height: 20),
              Text(
                'Company Profile',
                style: TextStyle(fontSize: 13),
              ),
              Row(
                children: [
                  //-----------checkbox-----------
                  Flexible(
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor:
                            MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? kPrimaryColor
                                : kContentColorLightTheme,
                      ),
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.only(left: 0),
                        // contentPadding: null,
                        title: Text(
                          'View',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        value: widget._iscchecked1,
                        activeColor: kPrimaryColor,
                        onChanged: (bool value) {
                          setState(
                            () {
                              widget._iscchecked1 = value;
                            },
                          );
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                  //-------------checkbox 2------------
                  Flexible(
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor:
                            MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? kPrimaryColor
                                : kContentColorLightTheme,
                      ),
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.only(left: 0),
                        // contentPadding: null,
                        title: Text(
                          'Edit',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        value: widget._iscchecked2,
                        activeColor: kPrimaryColor,
                        onChanged: (bool value) {
                          setState(
                            () {
                              widget._iscchecked2 = value;
                            },
                          );
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                ],
              ),
              //------------------------Department-----------------------------
              SizedBox(height: 10),
              Text(
                'Department',
                style: TextStyle(fontSize: 13),
              ),
              Row(
                children: [
                  //--------------checkbox 3-----------
                  Flexible(
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor:
                            MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? kPrimaryColor
                                : kContentColorLightTheme,
                      ),
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.only(left: 0),
                        // contentPadding: null,
                        title: Text(
                          'View',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        value: widget._iscchecked3,
                        activeColor: kPrimaryColor,
                        onChanged: (bool value) {
                          setState(
                            () {
                              widget._iscchecked3 = value;
                            },
                          );
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                  //--------------checkbox 4-----------
                  Flexible(
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor:
                            MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? kPrimaryColor
                                : kContentColorLightTheme,
                      ),
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.only(left: 0),
                        // contentPadding: null,
                        title: Text(
                          'Edit',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        value: widget._iscchecked4,
                        activeColor: kPrimaryColor,
                        onChanged: (bool value) {
                          setState(
                            () {
                              widget._iscchecked4 = value;
                            },
                          );
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                ],
              ),
              //-------------------------Office Loaction-------------------------
              SizedBox(height: 10),
              Text(
                'Office Loaction',
                style: TextStyle(fontSize: 13),
              ),
              Row(
                children: [
                  //-------------checkbox 5--------------
                  Flexible(
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor:
                            MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? kPrimaryColor
                                : kContentColorLightTheme,
                      ),
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.only(left: 0),
                        // contentPadding: null,
                        title: Text(
                          'View',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        value: widget._iscchecked5,
                        activeColor: kPrimaryColor,
                        onChanged: (bool value) {
                          setState(
                            () {
                              widget._iscchecked5 = value;
                            },
                          );
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                  //------------checkbox 6-------------
                  Flexible(
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor:
                            MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? kPrimaryColor
                                : kContentColorLightTheme,
                      ),
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.only(left: 0),
                        // contentPadding: null,
                        title: Text(
                          'Edit',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        value: widget._iscchecked6,
                        activeColor: kPrimaryColor,
                        onChanged: (bool value) {
                          setState(
                            () {
                              widget._iscchecked6 = value;
                            },
                          );
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                ],
              ),
              //--------------------Shift Schedule----------------------------
              SizedBox(height: 10),
              Text(
                'Shift Schedule',
                style: TextStyle(fontSize: 13),
              ),
              Row(
                children: [
                  //--------------checkbox 7-----------
                  Flexible(
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor:
                            MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? kPrimaryColor
                                : kContentColorLightTheme,
                      ),
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.only(left: 0),
                        // contentPadding: null,
                        title: Text(
                          'View',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        value: widget._iscchecked7,
                        activeColor: kPrimaryColor,
                        onChanged: (bool value) {
                          setState(
                            () {
                              widget._iscchecked7 = value;
                            },
                          );
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                  //------------checkbox 8----------
                  Flexible(
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor:
                            MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? kPrimaryColor
                                : kContentColorLightTheme,
                      ),
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.only(left: 0),
                        // contentPadding: null,
                        title: Text(
                          'Edit',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        value: widget._iscchecked8,
                        activeColor: kPrimaryColor,
                        onChanged: (bool value) {
                          setState(
                            () {
                              widget._iscchecked8 = value;
                            },
                          );
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                ],
              ),
              //---------------------------Leave Policy-----------------------------
              SizedBox(height: 10),
              Text(
                'Leave Policy',
                style: TextStyle(fontSize: 13),
              ),
              Row(
                children: [
                  //-----------checkbox 9---------
                  Flexible(
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor:
                            MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? kPrimaryColor
                                : kContentColorLightTheme,
                      ),
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.only(left: 0),
                        // contentPadding: null,
                        title: Text(
                          'View',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        value: widget._iscchecked9,
                        activeColor: kPrimaryColor,
                        onChanged: (bool value) {
                          setState(
                            () {
                              widget._iscchecked9 = value;
                            },
                          );
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                  //---------------checkbox 10-------------
                  Flexible(
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor:
                            MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? kPrimaryColor
                                : kContentColorLightTheme,
                      ),
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.only(left: 0),
                        // contentPadding: null,
                        title: Text(
                          'Edit',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        value: widget._iscchecked10,
                        activeColor: kPrimaryColor,
                        onChanged: (bool value) {
                          setState(
                            () {
                              widget._iscchecked10 = value;
                            },
                          );
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                  ),
                ],
              ),
              //----------------Save button--------------------------
              // Spacer(),
              SizedBox(height: 100),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      Navigator.pop(context);

                      if (widget.model != null) {
                        setState(() {
                          widget.model.text = _controller.text;
                          widget.model.iscchecked1 = widget._iscchecked1;
                          widget.model.iscchecked2 = widget._iscchecked2;
                          widget.model.iscchecked3 = widget._iscchecked3;
                          widget.model.iscchecked4 = widget._iscchecked4;
                          widget.model.iscchecked5 = widget._iscchecked5;
                          widget.model.iscchecked6 = widget._iscchecked6;
                          widget.model.iscchecked7 = widget._iscchecked7;
                          widget.model.iscchecked8 = widget._iscchecked8;
                          widget.model.iscchecked9 = widget._iscchecked9;
                          widget.model.iscchecked10 = widget._iscchecked10;
                        });
                        ScreenRolesAndPermmissions.rolesList.value += 1;
                        ScreenRolesAndPermmissions.rolesList.value -= 1;
                      } else {
                        myRoleAndPermissions.add(MyRoleAndPermissions(
                          text: _controller.text.toString(),
                          iscchecked1 : widget._iscchecked1,
                          iscchecked2 : widget._iscchecked2,
                          iscchecked3 : widget._iscchecked3,
                          iscchecked4 : widget._iscchecked4,
                          iscchecked5 : widget._iscchecked5,
                          iscchecked6 : widget._iscchecked6,
                          iscchecked7 : widget._iscchecked7,
                          iscchecked8 : widget._iscchecked8,
                          iscchecked9 : widget._iscchecked9,
                          iscchecked10 : widget._iscchecked10,
                        ));
                        ScreenRolesAndPermmissions.rolesList.value += 1;
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Complete the Form.'),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Text(
                    'SAVE SCHEDULE',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
