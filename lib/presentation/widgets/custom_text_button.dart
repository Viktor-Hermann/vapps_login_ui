import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final TextStyle textStyle;
  final bool allCaps;

  const CustomTextButton(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.textStyle,
      required this.allCaps});

  @override
  Widget build(BuildContext context) {
    String modtitle = allCaps ? title.toUpperCase() : title;
    return Center(
        child: InkWell(
            onTap: () => onPressed(),
            child: Text(
              modtitle,
              style: textStyle,
            )));
  }
}
