import 'package:flutter/material.dart';

class Card1_Home1 extends StatelessWidget {
  Card1_Home1({this.content, this.name1, this.name2, this.color, this.image});
  String name1;
  String name2;
  String content;
  var color;
  String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height * 0.13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: color.withOpacity(0.1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  horizontalTitleGap: 5,
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        child: ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.circular(100),
                          child: Image(
                            image: AssetImage(image),
                            width: 40,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  title: Text(
                    name1,
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(name2,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                Text(content)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card2_Home1 extends StatelessWidget {
  Card2_Home1({this.image, this.rate, this.text, this.color});
  String image;
  String text;
  String rate;
  var color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(20),
        color: color,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // elevation: 2,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: color == Colors.white
                        ? Colors.grey[600].withOpacity(0.1)
                        : Colors.white.withOpacity(0.4),
                  ),
                  child: Image.asset(
                    image,
                    width: 30,
                    height: 30,
                  ),
                ),
                Spacer(),
                Text(text),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: color == Colors.white
                        ? Colors.grey[600].withOpacity(0.1)
                        : Colors.white.withOpacity(0.4),
                  ),
                  child: Text(
                      new String.fromCharCodes(new Runes('\u0024')) + rate),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
