
import 'package:flutter/material.dart';
import 'package:hr_admin/HR_app/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';


class PrivacyApp extends StatefulWidget {
  @override
  State<PrivacyApp> createState() => _PrivacyAppState();
}

class _PrivacyAppState extends State<PrivacyApp> {
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
      body: Builder(
        builder: (context) {
          return WebView(
            initialUrl: 'https://www.alchemative.com/privacy-policy/',
            javascriptMode: JavascriptMode.unrestricted,
          );
        }
      ),
    );
  }
}
