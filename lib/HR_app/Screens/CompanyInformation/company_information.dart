import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/Screens/CompanyInformation/Components/form.dart';
import 'package:hr_admin/HR_app/constants.dart';

class CompanyInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          //--------------------background design----------------
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.4),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.4),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(150),
                ),
              ),
            ),
          ),
//------------------body-----------------------
          Body(),
        ],
      ),
    );
  }
}



class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
      //-------------------image------------------
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.transparent,
                child: Image(image: AssetImage('assets/images/Frame.png')),
              ),
              SizedBox(height: 10),
              Text('Company Informtion'),
              Text('(Help us setup your account)'),
              SizedBox(height: 40),
      //-----------------------Textfields----------------------
              FormCompanyInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
