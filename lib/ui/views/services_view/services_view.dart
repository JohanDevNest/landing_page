import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/custom_app_menu/utils/spacing.dart';
import 'sections/desktop.dart';
import 'sections/hero_section.dart';
import 'sections/mobile.dart';
import 'sections/web.dart';


class ServicesView extends StatelessWidget {
  const ServicesView({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        children:  [
          Container(
            color: const Color(0xFF1A1A1A),
            child: Column(
              children: [
                ServicesHeroSection(),
                Mobile(),
                verticalSpacing(150),
                Web(),
                verticalSpacing(150),
                Desktop(),
                //MobileService(),
                //DesktopService(),
                //WebService(),
                //MobileSteps(),
                //BannerServices(),
              ],
            ),
          )
          
          

        ],
      );
  }
}


class UnderConstructionPage extends StatelessWidget {
  const UnderConstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      appBar: AppBar(
        backgroundColor: const Color(0xFF222222),
        title: Text(
          'Sección en construcción',
          style: GoogleFonts.notoSerif(
            color: Color(0xFFFFFFFF),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.construction,
              color: Colors.orange,
              size: 100.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Estamos en construcción',
              style: GoogleFonts.notoSerif(
                fontSize: 24.0,
                color: Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Esta sección estará disponible pronto.',
              style: GoogleFonts.notoSerif(
                fontSize: 18.0,
                color: Color(0xFFCACACA),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}