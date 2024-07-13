import 'package:flutter/material.dart';

import '../widgets/custom_flat_button.dart';

class TabletDesktopMenu extends StatelessWidget {
  const TabletDesktopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
          color: Color(0xFF2F2933),
          border: Border(bottom: BorderSide(color: Color(0xFFFF6F61)))),
      width: double.infinity,
      //color: Color(0xFF2F2933),//Colors.green,//Color(0xFF2F2933),
      child: Row(
        children: [
          const SizedBox(
            width: 80,
          ),
          Image.network(
            "assets/logo.png",
            width: 200,
            height: 70,
            fit: BoxFit.cover,
          ),
          const Spacer(),
          CustomFlatButton(
            text: 'Inicio',
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () {},
            fontSize: 18,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Acerca de nosotros',
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed: () {},
            fontSize: 18,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Servicios',
            // onPressed: () => Navigator.pushNamed(context, '/abc123'),
            onPressed: () {},
            fontSize: 18,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contactanos',
            // onPressed: () => Navigator.pushNamed(context, '/stateful/100'),
            onPressed: () {},
            backGroundColor: const Color(0xFF6D11B4),
            fontSize: 18,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'En',
            // onPressed: () => Navigator.pushNamed(context, '/stateful/100'),
            onPressed: () {},
          ),
          const SizedBox(
            width: 50,
          )
        ],
      ),
    );
  }
}
