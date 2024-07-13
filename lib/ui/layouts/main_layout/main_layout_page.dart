import 'package:flutter/material.dart';
import '../../shared/custom_app_menu.dart';
import 'views/about_view.dart';
import 'views/hero_view.dart';
import 'views/services_view.dart';
import 'views/why_view.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            _MainLayoutPage(),
            Positioned(
              
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: CustomAppMenu(),
              ) 
            )
          ],
        ),
      ),
    );
  }
}


class _MainLayoutPage extends StatelessWidget {
  const _MainLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      //
      children: [
        HeroView(),
        ServicesView(),
        WhyView(),
        AboutView()
      ],
    );
  }
}