import 'package:flutter/material.dart';

import 'responsive/mobile.dart';
import 'responsive/tablet_desktop.dart';

class CustomAppMenu extends StatelessWidget {
  final double scrollPosition;

  const CustomAppMenu({
    super.key,
    required this.scrollPosition,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 1100)
            ? TabletDesktopMenu(scrollPosition: scrollPosition)
            : const MobileMenu();
      },
    );
  }
}
