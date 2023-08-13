import 'package:flutter/material.dart';

class WebScreenLanding extends StatefulWidget {
  const WebScreenLanding({Key? key}) : super(key: key);

  @override
  State<WebScreenLanding> createState() => _WebScreenLandingState();
}

class _WebScreenLandingState extends State<WebScreenLanding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Web"),
      ),
    );
  }
}
