import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    super.key,
    required this.text,
    this.color = Colors.white,
    required this.onPressed,
    this.backGroundColor = Colors.transparent,
    this.fontSize = 15,
  });

  final String text;
  final Color color;
  final Function onPressed;
  final Color backGroundColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            foregroundColor: color,
            backgroundColor: backGroundColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        onPressed: () => onPressed(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize),
          ),
        ));
  }
}
