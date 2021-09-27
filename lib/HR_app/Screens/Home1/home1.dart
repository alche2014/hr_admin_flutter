import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/Home1/cards.dart';
import 'package:hr_admin/HR_app/constants.dart';

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.17),
//-----------------------Card1------------------------
            Row(
              children: [
                Card1_Home1(
                  name1: 'Mike',
                  name2: 'Wazowiski',
                  content: 'That`s Awesome',
                  color: kPrimaryColor,
                  image: 'assets/images/user1.png',
                ),
                SizedBox(width: 8),
                Card1_Home1(
                  name1: 'Mike',
                  name2: 'Steward',
                  content: 'Plz take a look at the...',
                  color: Colors.green,
                  image: 'assets/images/user1.png',
                ),
              ],
            ),
            SizedBox(height: 20),
//------------------------------Card2--------------------
            Row(
              children: [
                Card2_Home1(
                  text: 'Product Designer',
                  rate: '45/h',
                  image: 'assets/images/Uber_logo.png',
                  color: kPrimaryColor,
                ),
                SizedBox(width: 10),
                Card2_Home1(
                  text: 'Product Designer',
                  rate: '45/h',
                  image: 'assets/images/google-icon.jpg',
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
//-----------------Floating action button---------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add, color: Colors.white,),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
