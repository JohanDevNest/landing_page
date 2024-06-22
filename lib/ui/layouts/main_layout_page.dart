import 'package:flutter/material.dart';
import 'package:landing_page/ui/shared/custom_app_menu.dart';
import 'package:landing_page/ui/views/hero_view.dart';
import 'package:landing_page/ui/views/services_view.dart';
import 'package:landing_page/ui/views/why_view.dart';

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
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: CustomAppMenu(),
                ),
                // child: MediaQuery.of(context).size.width > 520 ? CustomAppMenu() 
                // : Row(
                //   children: [ 
                //     CustomAppMenu()
                //   ],
                // ) ,
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
      children: [
        HeroView(),
        ServicesView(),
        ServicesView(),
        WhyView()
        
      ],
    );
  }
}