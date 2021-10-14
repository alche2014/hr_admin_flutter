
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
    //   body: Builder(builder: (BuildContext context) {
    //     return WebView(
    //       initialUrl: 'https://flutter.dev',
    //       javascriptMode: JavascriptMode.unrestricted,
    //       onWebViewCreated: (WebViewController webViewController) {
    //         var _controller;
    //         _controller.complete(webViewController);
    //       },
    //       onProgress: (int progress) {
    //         print("WebView is loading (progress : $progress%)");
    //       },
    //       // javascriptChannels: <JavascriptChannel>{
    //       //   _toasterJavascriptChannel(context),
    //       // },
    //       navigationDelegate: (NavigationRequest request) {
    //         if (request.url.startsWith('https://www.youtube.com/')) {
    //           print('blocking navigation to $request}');
    //           return NavigationDecision.prevent;
    //         }
    //         print('allowing navigation to $request');
    //         return NavigationDecision.navigate;
    //       },
    //       onPageStarted: (String url) {
    //         print('Page started loading: $url');
    //       },
    //       onPageFinished: (String url) {
    //         print('Page finished loading: $url');
    //       },
    //       gestureNavigationEnabled: true,
    //     );
    //   }),
    //   // floatingActionButton: favoriteButton(),
    // );
      body: Builder(
        builder: (context) {
          return WebView(
            initialUrl: 'https://www.alchemative.com/about-us/',
            javascriptMode: JavascriptMode.unrestricted,
          );
        }
      ),
      // body: Container(
      //   margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(5),
      //     border: Border.all(width: 1,color: Colors.grey[300])
      //   ),
      //   padding: EdgeInsets.all(20),
      //   child: Text(
      //       'This is HR admin panal, ready to use... This is HR admin panal  This is HR admin panal, ready to use...  This is HR admin panal This is HR admin panal, ready to use... This is HR admin panal This is HR admin panal This is HR admin panal, ready to use... This is HR admin panal, ready to use... This is HR admin panal This is HR admin panal This is HR admin panal, ready to use... This is HR admin panal This is HR admin panal, ready to use... This is HR admin panal This is HR admin panal, ready to use... This is HR admin panal This is HR admin panal, ready to use... This is HR admin panalv This is HR admin panal This is HR admin panal, ready to use... This is HR admin panal, ready to use... This is HR admin panal, ready to use... This is HR admin panal, ready to use... This is HR admin panal, ready to use...'),
      // ),
    );
  }
}
