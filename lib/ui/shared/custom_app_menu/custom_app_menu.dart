import 'package:flutter/material.dart';

import 'responsive/mobile.dart';
import 'responsive/tablet_desktop.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ( _, constraints){
        return (constraints.maxWidth > 1100)
                ? const TabletDesktopMenu()
                : const MobileMenu();
      }
      );
  }
}






