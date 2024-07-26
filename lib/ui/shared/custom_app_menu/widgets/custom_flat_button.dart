import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    super.key,
    required this.text,
    this.color = Colors.white,
    required this.onPressed,
    this.backGroundColor = Colors.transparent,
    this.fontSize = 15.0,
    this.withIcon = false,
    this.iconSize = 24.0, 
  });

  final String text;
  final Color color;
  final Function onPressed;
  final Color backGroundColor;
  final double fontSize;
  final bool withIcon;
  final double iconSize;

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
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: fontSize),
              ),
              withIcon ? SizedBox(width: 15.0,) : SizedBox(width: 0.0,),
              
              withIcon ? Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: iconSize,
              ) : SizedBox(width: 0.0,)
            ],
          ),
        ));
  }
}
