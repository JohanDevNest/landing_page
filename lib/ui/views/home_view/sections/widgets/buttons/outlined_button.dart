import 'package:flutter/material.dart';

class OutlinedButtonCustom extends StatelessWidget {
  const OutlinedButtonCustom({super.key, required this.text, required this.fontSize});
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
          onPressed: () {
            // Acción del botón
          },
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Color(0xFFFF00B8), width: 2), // Color y grosor del borde
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Radio del borde
            ),
            //padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20), // Padding del botón
            padding: EdgeInsets.all(25)
          ),
          child:  Text(
            text,
            style:  TextStyle(
              color: Color(0xFFFF00B8), // Color del texto
              fontSize: fontSize, // Tamaño del texto
            ),
          ),
        );
  }
}