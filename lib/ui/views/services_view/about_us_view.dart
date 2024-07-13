import 'package:flutter/material.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        // height: double.infinity,
        // width: double.infinity,
        child: Text(
          'Services',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
