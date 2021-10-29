import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

const ColorRed = Color(0xffC53B4B);
const ColorGrey = Color(0xff737373);

class Company_Profile_Form extends StatefulWidget {
  @override
  _Company_Profile_FormState createState() => _Company_Profile_FormState();
}

class _Company_Profile_FormState extends State<Company_Profile_Form> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  TextEditingController _controller4 = new TextEditingController();
  TextEditingController _controller5 = new TextEditingController();
  TextEditingController _controller6 = new TextEditingController();
  TextEditingController _controller7 = new TextEditingController();
  var _dropdownValue1;
  var _dropdownValue2;
  var _dropdownValue3;
  TextEditingController _createNewDomain = new TextEditingController();
  TextEditingController _editDomain = new TextEditingController();
  List<String> _myDomains = [];

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    _createNewDomain.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    print('Second text field: ${_createNewDomain.text}');
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    // _createNewDomain.text = null;
    _createNewDomain.dispose();
    _editDomain.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
//----------------------image-------------------
          CircularPercentIndicator(
            radius: 87,
            lineWidth: 3,
            backgroundColor: Colors.white,
            percent: 0.50,
            progressColor: kPrimaryColor,
            circularStrokeCap: CircularStrokeCap.round,
            animation: true,
            center: Stack(
              children: [
                CircleAvatar(
                  radius: 40,
                  child: ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage('assets/images/user1.png'),
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image(
                    image: AssetImage('assets/images/Vector.png'),
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 3,
                  right: 3,
                  child: Icon(
                    Icons.edit_outlined,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
//------------------Domains--------------------//
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              // height: 115,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Domain(s)',
                            style: TextStyle(fontSize: 13, color: ColorGrey)),
                        //================CreateNew========================//
                        TextButton(
                            onPressed: () {
                              showDialog(
                                //showdialog on Apply now
                                context: context,
                                barrierDismissible: false,
                                builder: (context) => AlertDialog(
                                  // backgroundColor: Colors.grey[100],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(''),
                                      Text(
                                        'ADD DOMAIN',
                                        style: TextStyle(color: kPrimaryRed),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: Icon(Icons.close)),
                                    ],
                                  ), //on which popup pops
                                  content: Container(
                                    height: 200,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 20),
                                              Text(
                                                "Domain's",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(height: 8),
                                              TextField(
                                                controller: _createNewDomain,
                                                decoration: InputDecoration(
                                                  hintText: "Domain's",
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    borderSide:
                                                        const BorderSide(
                                                      color: Colors.transparent,
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    borderSide: BorderSide(
                                                      color: Colors.grey
                                                          .withOpacity(0.4),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                            ]),
                                        Row(
                                          children: [
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                  setState(() {
                                                    _myDomains.add(
                                                        _createNewDomain.text);
                                                    _createNewDomain.clear();
                                                  });
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    //button used in dialog
                                                    primary: Colors.red[800],
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7))),
                                                child: Text(
                                                  'ADD',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                              //================CreateNew========================//
                            },
                            child: Text('Create New',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 13,
                                    color: ColorRed)))
                      ]),
                  //---------------------------//
                  if (_myDomains.length > 0)
                    for (int i = 0; i < _myDomains.length; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(_myDomains[i],
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 13,
                                      color: Colors.blue)),
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: InkWell(
                                  splashColor: ColorRed.withOpacity(0.3),
                                  onTap: () {
                                    showDialog(
                                      //showdialog on Apply now
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) => AlertDialog(
                                        // backgroundColor: Colors.grey[100],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(''),
                                            Text(
                                              'EDIT DOMAIN',
                                              style:
                                                  TextStyle(color: kPrimaryRed),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                icon: Icon(Icons.close)),
                                          ],
                                        ), //on which popup pops
                                        content: Container(
                                          height: 200,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(height: 20),
                                                    Text(
                                                      "Domain's",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey),
                                                    ),
                                                    SizedBox(height: 8),
                                                    TextField(
                                                      controller: _editDomain,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: _myDomains[i],
                                                        hintStyle: TextStyle(
                                                            color: Colors.grey),
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.4),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                  ]),
                                              Row(
                                                children: [
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                        setState(() {
                                                          _myDomains[i] =
                                                              _editDomain.text;
                                                          _editDomain.clear();
                                                        });
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              //button used in dialog
                                                              primary: Colors
                                                                  .red[800],
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              7))),
                                                      child: Text(
                                                        'SAVE',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                    //================Edit========================//
                                  },
                                  child: Text('Edit',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontSize: 13,
                                          color: ColorRed)),
                                ),
                              )
                            ]),
                      ),
                  //---------------------------//
                  SizedBox(height: 20),
                ]),
              ),
            ),
          ),
//------------------Domains--------------------//
//------------------textfields--------------------
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller1,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Company Name'),
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller2,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Portal Name'),
          ),
          SizedBox(height: 10),
          //-----------------------DropDown1-------------------
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey[300], width: 1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _dropdownValue1,
                style: TextStyle(color: Colors.black),
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                hint: Text(
                  'Industry',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                onChanged: (String newValue) {
                  setState(() {
                    _dropdownValue1 = newValue;
                  });
                },
                items: <String>['1', '2'].map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          SizedBox(height: 10),
//----------------------Dropdown2----------------------------
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey[300], width: 1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _dropdownValue2,
                style: TextStyle(color: Colors.black),
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                hint: Text(
                  'Domain(alchi.com)',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                onChanged: (String newValue) {
                  setState(() {
                    _dropdownValue2 = newValue;
                  });
                },
                items: <String>['1', '2'].map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          SizedBox(height: 10),
//-------------------------Textfield--------------------------
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller3,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Mobile'),
            keyboardType: TextInputType.phone,
            inputFormatters: [phonemask],
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller4,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Email'),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              final pattern =
                  (r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
              final regExp = RegExp(pattern);

              if (value.isEmpty) {
                return null;
              } else if (value.contains(' ')) {
                return 'can not have blank spaces';
              } else if (!regExp.hasMatch(value)) {
                return 'Enter a valid email';
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller5,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Contact Person'),
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controller6,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Country'),
          ),
          SizedBox(height: 10),
          //----------------------Dropdown3----------------------------
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey[300], width: 1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _dropdownValue3,
                style: TextStyle(color: Colors.black),
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                hint: Text(
                  'TimeZone',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                onChanged: (String newValue) {
                  setState(() {
                    _dropdownValue3 = newValue;
                  });
                },
                items: <String>['1', '2'].map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          SizedBox(height: 10),
//-------------------textfield-----------------
          TextFormField(
            controller: _controller7,
            style: TextFieldTextStyle(),
            decoration: TextFieldDecoration('Address'),
          ),

          SizedBox(height: 10),
          //----------------------Map-----------------------
          Container(
            height: 230,
            child: Image.asset(
              'assets/images/map.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 30),
          //----------------Save button--------------------------
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
              onPressed: () {
                if (_controller1.text.isNotEmpty &&
                    _controller2.text.isNotEmpty &&
                    _controller3.text.isNotEmpty &&
                    _controller4.text.isNotEmpty &&
                    _controller5.text.isNotEmpty &&
                    _controller6.text.isNotEmpty &&
                    _controller7.text.isNotEmpty &&
                    _dropdownValue1 != null &&
                    _dropdownValue2 != null &&
                    _dropdownValue3 != null) {
                  Navigator.of(context).pop();
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
                'Save',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const kPrimaryRed = Color(0xffC53B4B);
