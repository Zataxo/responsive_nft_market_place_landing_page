import 'package:flutter/material.dart';
import 'package:responsive_page/widget/first_page_view.dart';
import 'package:responsive_page/widget/second_page_view.dart';

class WebScreenLanding extends StatefulWidget {
  const WebScreenLanding({Key? key}) : super(key: key);

  @override
  State<WebScreenLanding> createState() => _WebScreenLandingState();
}

class _WebScreenLandingState extends State<WebScreenLanding> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: PageView.builder(
          scrollDirection: Axis.vertical,
          pageSnapping: false,
          itemCount: 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const FirstPageView();
            } else {
              return const SecondPageView();
            }
          }),
    ));
  }
}
