import 'package:flutter/material.dart';
import 'package:responsive_page/utils/responsive_handler.dart';
import 'package:responsive_page/view/mobile_landing.dart';
import 'package:responsive_page/view/web_landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff1C121F),
      ),
      home: const ResponsiveHandler(
          webWinViewLayout: WebScreenLanding(),
          mobileViewLayout: MobileScreenLanding()),
    );
  }
}
