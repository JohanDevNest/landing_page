import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../router/path_routes.dart';
import '../widgets/custom_flat_button.dart';

class TabletDesktopMenu extends StatelessWidget {
  final double scrollPosition;

  const TabletDesktopMenu({
    super.key,
    required this.scrollPosition,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = scrollPosition > 50 ? Color(0xFF191919) : Colors.transparent;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      width: double.infinity,
      child: Row(
        children: [
          const SizedBox(width: 80),
          Image.network(
            "assets/logodevnest.png",
            width: 150,
            height: 70,
            fit: BoxFit.cover,
          ),
          const Spacer(),
          CustomFlatButton(
            text: 'Inicio',
            onPressed: () => GoRouter.of(context).go(Routes.home),
            fontSize: 18,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Acerca de nosotros',
            onPressed: () => GoRouter.of(context).go(Routes.aboutUsView),
            fontSize: 18,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Servicios',
            onPressed: () => GoRouter.of(context).go(Routes.servicesRoute),
            fontSize: 18,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contactanos',
            onPressed: () => GoRouter.of(context).go(Routes.contactRoute),
            backGroundColor: const Color(0xFF6D11B4),
            fontSize: 18,
          ),
          const SizedBox(width: 10),
          const SizedBox(width: 50),
        ],
      ),
    );
  }
}
