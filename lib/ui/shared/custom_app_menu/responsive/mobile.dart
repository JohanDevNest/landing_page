import 'package:flutter/material.dart';

import '../widgets/custom_menu_item.dart';

class MobileMenu extends StatefulWidget {
  const MobileMenu({super.key});

  @override
  State<MobileMenu> createState() => _MobileMenuState();
}

class _MobileMenuState extends State<MobileMenu>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 200,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (isOpen) {
            controller.reverse();
          } else {
            controller.forward();
          }
          setState(() {
            isOpen = !isOpen;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: 150,
          height: isOpen ? 320 : 70,
          color: isOpen ? Colors.white : Colors.transparent,
          child: Column(
            children: [
              _MenuTitle(isOpen: isOpen, controller: controller),
              if (isOpen) ...[
                CustomMenuItem(text: 'Home', onPressed: () {}),
                CustomMenuItem(text: 'About', onPressed: () {}),
                CustomMenuItem(text: 'Pricing', onPressed: () {}),
                CustomMenuItem(text: 'Contact', onPressed: () {}),
                CustomMenuItem(text: 'Location', onPressed: () {}),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    super.key,
    required this.isOpen,
    required this.controller,
  });

  final bool isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Text(
            'DevNestInnova',
            style: TextStyle(
              color: isOpen ? Colors.black : Colors.white,
              fontSize: 20,
            ),
          ),
          const Spacer(),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: isOpen ? 45 : 0,
          ),

          //Text('Menu', style: GoogleFonts.roboto( color: Colors.white, fontSize: 18)),
          const Spacer(),
          //Icon(Icons.menu, color: Colors.white,)
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
            color: isOpen ? Colors.black : Colors.white,
          )
        ],
      ),
    );
  }
}
