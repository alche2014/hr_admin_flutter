import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kPrimaryColor = Color(0xFFC53B4B);
const kSecondaryColor = Color(0xFFFE9901);
const kContentColorLightTheme = Color(0xFF1D1D35);
const kContentColorDarkTheme = Color(0xFFF5FCF9);
const kWarninngColor = Color(0xFFF3BB1C);
const kErrorColor = Color(0xFFF03738);

const kDefaultPadding = 20.0;

Future setdata(String key, String value) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString(key, value);
}

Future<String> getdata(String key) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return preferences.getString(key) ?? "";
  // return data;
}
var phonemask = new MaskTextInputFormatter(mask: '+92 ### #######');
var cnicemask = new MaskTextInputFormatter(mask: '#####-#######-#');