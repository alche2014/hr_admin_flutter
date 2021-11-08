import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PrivacyApp extends StatefulWidget {
  @override
  State<PrivacyApp> createState() => _PrivacyAppState();
}

class _PrivacyAppState extends State<PrivacyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Privacy Policy'),
        backgroundColor: kPrimaryColor,
      ),
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child:
                              Image.asset('assets/privacy.png', height: 108)),
                      SizedBox(height: 20),
                      //-----------------------------------------------------------//
                      Text(header1,
                          style: TextStyle(
                              fontSize: 18, color: Color(0XFFC53B4B))),
                      SizedBox(height: 20),
                      Text(body1,
                          style: TextStyle(
                              height: 1.5,fontSize: 13, color: Color(0XFF5B5B5B))),
                      SizedBox(height: 40),
                      //-----------------------------------------------------------//
                      Text(header2,
                          style: TextStyle(
                              fontSize: 16, color: Color(0XFF535353))),
                      SizedBox(height: 20),
                      Text(body2,
                          style: TextStyle(
                              height: 1.5,fontSize: 13, color: Color(0XFF5B5B5B))),
                      //-----------------------------------------------------------//
                      SizedBox(height: 40),
                      Text(header3,
                          style: TextStyle(
                              fontSize: 16, color: Color(0XFF535353))),
                      SizedBox(height: 20),
                      Text(body3,
                          style: TextStyle(
                              height: 1.5,fontSize: 13, color: Color(0XFF5B5B5B))),
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          text: '• ',
                          style:
                              TextStyle(color: Color(0XFF5B5B5B), fontSize: 13),
                          children: <TextSpan>[
                            TextSpan(
                                text: bullet1,
                                style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          text: '• ',
                          style:
                              TextStyle(color: Color(0XFF5B5B5B), fontSize: 13),
                          children: <TextSpan>[
                            TextSpan(
                                text: bullet2,
                                style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          text: '• ',
                          style:
                              TextStyle(color: Color(0XFF5B5B5B), fontSize: 13),
                          children: <TextSpan>[
                            TextSpan(
                                text: bullet3,
                                style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          text: '• ',
                          style:
                              TextStyle(color: Color(0XFF5B5B5B), fontSize: 13),
                          children: <TextSpan>[
                            TextSpan(
                                text: bullet4,
                                style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                    ]),
              ),
            ],
          ),
        );
      }),
    );
  }
}

String header1 = 'Privacy Policy of Alchemative (SMC-PVT) LTD';
String body1 =
    'Alchemative (SMC-PVT) LTD operates the www.alchemative.com website, which provides the SERVICE. This page is used to inform website visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service, the Alchemative Website website. If you choose to use our Service, then you agree to the collection and use of information in relation with this policy. The Personal Information that we collect are used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy. The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at www.alchemative.com, unless otherwise defined in this Privacy Policy. Our Privacy Policy was created with the help of the Privacy Policy Template and the Online Privacy Policy Template.';

String header2 = 'Information Collection and Use';
String body2 =
    'For a better experience while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to your name, phone number, and postal address. The information that we collect will be used to contact or identify you.Log Data';

String header3 = 'Service Providers';
String body3 =
    'We may employ third-party companies and individuals due to the following reasons: ';

String bullet1 = 'To facilitate our Service;';
String bullet2 = 'To provide the Service on our behalf;';
String bullet3 = 'To perform Service-related services; or';
String bullet4 = 'To assist us in analyzing how our Service is used.';