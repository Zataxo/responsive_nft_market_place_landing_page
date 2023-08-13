import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      this.buttonColor,
      this.titleStyle,
      this.margin})
      : super(key: key);
  final Function() onPressed;
  final String title;
  final Color? buttonColor;
  final TextStyle? titleStyle;
  final EdgeInsets? margin;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        margin: margin ?? const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: const Color(0xffFFCE4E)),
            color: buttonColor ?? const Color(0xffE9D7A7).withOpacity(0.1)),
        child: Center(
          child: Text(
            title,
            style: titleStyle ??
                TextStyle(
                    color: const Color(0xffFFCE4E),
                    fontFamily: "Work Sans",
                    fontSize: size.width * 0.01),
          ),
        ),
      ),
    );
  }
}
