import 'package:flutter/material.dart';

class OutlinedButtonCustom extends StatelessWidget {
  const OutlinedButtonCustom({super.key, required this.text});
  final String text;

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
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20), // Padding del botón
          ),
          child:  Text(
            text,
            style: const TextStyle(
              color: Color(0xFFFF00B8), // Color del texto
              fontSize: 16, // Tamaño del texto
            ),
          ),
        );
  }
}