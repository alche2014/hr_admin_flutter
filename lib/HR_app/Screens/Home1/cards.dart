import 'package:flutter/material.dart';

// ignore: camel_case_types
class Card1_Home1 extends StatelessWidget {
  Card1_Home1({this.text1, this.text2, this.color});
  String text1;
  String text2;
  var color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(8),
        color: color, //.withOpacity(0.1),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height * 0.13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text1, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                Text(text2, style: TextStyle(color: Colors.white, fontSize: 17),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class Card2_Home1 extends StatelessWidget {
//   Card2_Home1({this.image, this.rate, this.text, this.color});
//   String image;
//   String text;
//   String rate;
//   var color;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Material(
//         elevation: 2,
//         borderRadius: BorderRadius.circular(20),
//         color: color,
//         child: InkWell(
//           onTap: () {},
//           borderRadius: BorderRadius.circular(15),
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//             height: MediaQuery.of(context).size.height * 0.2,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   // elevation: 2,
//                   padding: EdgeInsets.all(5),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     color: color == Colors.white
//                         ? Colors.grey[600].withOpacity(0.1)
//                         : Colors.white.withOpacity(0.4),
//                   ),
//                   child: Image.asset(
//                     image,
//                     width: 30,
//                     height: 30,
//                   ),
//                 ),
//                 Spacer(),
//                 Text(text),
//                 SizedBox(height: 5),
//                 Container(
//                   padding: EdgeInsets.all(5),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     color: color == Colors.white
//                         ? Colors.grey[600].withOpacity(0.1)
//                         : Colors.white.withOpacity(0.4),
//                   ),
//                   child: Text(
//                       new String.fromCharCodes(new Runes('\u0024')) + rate),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
