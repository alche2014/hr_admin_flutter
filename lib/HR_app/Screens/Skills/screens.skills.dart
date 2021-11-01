import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:hr_admin/HR_app/Screens/Skills/chip_maker.dart';
import 'package:hr_admin/HR_app/Screens/Skills1/chip_maker1.dart';
import 'package:hr_admin/HR_app/app_bar.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  TextEditingController _textcontroller = new TextEditingController();
  final node = FocusNode();
  // var _dropdownValue;

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

                    TypeAheadFormField(
                      textFieldConfiguration: TextFieldConfiguration(
                        decoration: TextFieldDecoration('Skills'),
                        controller: _textcontroller,
                        focusNode: node,
                      ),
                      suggestionsCallback: (Pattern) =>
                          Chipmaker1.choosed1.where(
                        (element) => element
                            .toLowerCase()
                            .contains(Pattern.toLowerCase()),
                      ),
                      getImmediateSuggestions: true,
                      hideSuggestionsOnKeyboardHide: false,
                      onSuggestionSelected: (value) {
                        setState(() {
                          // _dropdownValue = value;
                          if (Chipmaker.choosed.contains(value)) {
                            // return;
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Already Selected'),
                              ),
                            );
                          } else {
                            Chipmaker.choosed.add(value);
                          }
                        });
                      },
                      itemBuilder: (_, String element) {
                        return ListTile(
                          title: Text(element),
                        );
                      },
                      noItemsFoundBuilder: (context) {
                        return Column(
                          children: [
                            ListTile(
                              title: Text('No Sugestion Found'),
                            ),
                            ListTile(
                              leading: Icon(Icons.add),
                              title: Text('Add to List'),
                              onTap: () {
                                setState(() {
                                  Chipmaker.choosed.add(_textcontroller.text);
                                  Chipmaker1.choosed1.add(_textcontroller.text);
                                  _textcontroller.clear();
                                  node.unfocus();
                                });
                              },
                            )
                          ],
                        );
                      },
                    ),

                    // Container(
                    //   // height: 70,
                    //   padding: EdgeInsets.symmetric(horizontal: 10),
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(5),
                    //     border: Border.all(
                    //       color: Colors.grey[300],
                    //       width: 1,
                    //     ),
                    //   ),
                    //   child: DropdownButtonFormField(
                    //     decoration: InputDecoration(
                    //         contentPadding: EdgeInsets.all(0),
                    //         border: const OutlineInputBorder(
                    //           borderSide: BorderSide.none,
                    //           borderRadius: BorderRadius.all(
                    //             Radius.circular(10),
                    //           ),
                    //         ),
                    //         labelText: "Skills",
                    //         labelStyle:
                    //             TextStyle(fontSize: 12, color: Colors.grey),
                    //         filled: true,
                    //         fillColor: Colors.white),
                    //     value: _dropdownValue,
                    //     items: Chipmaker1.choosed1
                    //         .map<DropdownMenuItem<String>>((String value) {
                    //       return DropdownMenuItem<String>(
                    //         value: value,
                    //         child: Text(
                    //           value,
                    //           style:
                    //               TextStyle(fontSize: 12, color: Colors.grey),
                    //         ),
                    //       );
                    //     }).toList(),
                    //     onChanged: (value) {
                    //       setState(() {
                    //         // _dropdownValue = value;
                    //         if (Chipmaker.choosed.contains(value)) {
                    //           ScaffoldMessenger.of(context).showSnackBar(
                    //             const SnackBar(
                    //               content: Text('Already Selected'),
                    //             ),
                    //           );
                    //         } else {
                    //           Chipmaker.choosed.add(value);
                    //         }
                    //       });
                    //     },
                    //   ),
                    // ),

                    //     TextFormField(
                    //       controller: _textcontroller,
                    //       decoration: TextFieldDecoration('Add Skills'),
                    //       onFieldSubmitted: (value) {
                    //         setState(() {
                    //           if (_textcontroller.text.isNotEmpty)
                    //             Chipmaker.choosed.add(_textcontroller.text);
                    //         });
                    //         _textcontroller.clear();
                    //       },
                    //     ),
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
                      if (Chipmaker.choosed.isNotEmpty)
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
        ));
  }
}
