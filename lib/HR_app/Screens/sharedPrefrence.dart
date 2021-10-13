// import 'dart:io';

// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// String imagePath;
// void saveImage(path) async {
//   SharedPreferences saveimage = await SharedPreferences.getInstance();
//   saveimage.setString('saveImage', path);
// }

// void loadImage() async {
//   SharedPreferences loadimage = await SharedPreferences.getInstance();
//   // setState(() {
//     imagePath = loadimage.getString('saveImage');
//   // });
// }

// class myimagepicker{
//  static File image;
  

//   static Future pickImage() async {
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//       if (image == null) return;

//       File imageTemp = File(image.path);

//       // setState(() {
//         myimagepicker.image = imageTemp;
//         saveImage(image.path);
//         loadImage();
//         // saveImage(this.image);
//       // });
//     } on PlatformException catch (e) {
//       print('Access Rejected: $e');
//     }
//   }
// }