import 'package:flutter/material.dart';

import '../../shared/custom_app_menu/custom_app_menu.dart';

class MainLayoutPage extends StatefulWidget {
  final Widget child;

  const MainLayoutPage({
    super.key,
    required this.child,
  });

  @override
  MainLayoutPageState createState() => MainLayoutPageState();
}

class MainLayoutPageState extends State<MainLayoutPage> {
  double _scrollPosition = 0.0;

  void updateScrollPosition(double position) {
    setState(() {
      _scrollPosition = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          widget.child,
          Positioned(
            child: CustomAppMenu(scrollPosition: _scrollPosition),
          ),
        ],
      ),
    );
  }
}
