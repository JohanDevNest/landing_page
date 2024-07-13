import 'package:flutter/material.dart';

import '../../shared/custom_app_menu/custom_app_menu.dart';


class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({
    super.key,
    required this.child,
  });

  final Widget child; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            child,
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: const CustomAppMenu(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
