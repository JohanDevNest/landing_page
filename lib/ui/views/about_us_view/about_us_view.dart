import 'package:flutter/material.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        // height: double.infinity,
        // width: double.infinity,
        child: Text(
          'About Us',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
