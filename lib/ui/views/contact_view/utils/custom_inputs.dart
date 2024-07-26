import 'package:flutter/material.dart';


class CustomInputs {
  
  static InputDecoration loginInputDecoration({
    required String hint, 
    required String label, 
    required IconData icon,
    }){

    return InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.3))
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.3))
      ),
      hintText: hint,
      labelText: label,
      filled: true,
      fillColor: Colors.grey[300],
      //prefixIcon: Icon(icon, color: Colors.grey,),
      labelStyle: TextStyle(color: Colors.grey),
      hintStyle: TextStyle(color: Colors.grey),

    );
  }
}