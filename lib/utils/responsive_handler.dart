import 'package:flutter/material.dart';

class ResponsiveHandler extends StatelessWidget {
  const ResponsiveHandler(
      {Key? key,
      required this.webWinViewLayout,
      required this.mobileViewLayout})
      : super(key: key);
  final Widget webWinViewLayout;
  final Widget mobileViewLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileViewLayout;
        }
        return webWinViewLayout;
      },
    );
  }
}
