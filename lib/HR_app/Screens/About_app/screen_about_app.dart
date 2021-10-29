import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutApp extends StatefulWidget {
  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  void initState() {
    super.initState();
    // Enable hybrid composition.
    WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20),
          Center(child: Image.asset('assets/aboutimage.png', height: 198)),
          SizedBox(height: 20),
          //-----------------------------------------------------------//
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(header, style: TextStyle(fontSize: 18, color: Color(0XFFC53B4B))),
            SizedBox(height: 20),
            Text(body, style: TextStyle(height: 1.5,fontSize: 13, color: Color(0XFF5B5B5B))),
            SizedBox(height: 40),
            ]),
          ),
          //-----------------------------------------------------------//
        ]),
      ),
    );
  }
}

String header = 'About App';
String body =
    "Our mission is to enable our clients to realize the full potential of their business by consistently offering world-class technological products, services and solutions to enhance their profitability and perception. We are determined to positively impact the lives of our employees, clients, partners, and the communities in which we operate. Our mission is to enable our clients to realize the full potential of their business by consistently offering world-class technological products, services and solutions to enhance their profitability and perception. We are determined to positively impact the lives of our employees, clients, partners, and the communities in which we operate.";
