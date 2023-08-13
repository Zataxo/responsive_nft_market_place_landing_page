import 'package:flutter/material.dart';

class MobileScreenLanding extends StatefulWidget {
  const MobileScreenLanding({Key? key}) : super(key: key);

  @override
  State<MobileScreenLanding> createState() => _MobileScreenLandingState();
}

class _MobileScreenLandingState extends State<MobileScreenLanding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Mobile"),
      ),
    );
  }
}
