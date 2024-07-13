
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        // height: double.infinity,
        // width: double.infinity,
        child: Text(
          'Contact',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
