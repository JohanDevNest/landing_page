import 'package:flutter/material.dart';

import 'sections/about_section.dart';
import 'sections/advantages_section.dart';
import 'sections/banner.dart';
import 'sections/footer_section.dart';
import 'sections/hero_section.dart';
import 'sections/our_technologies.dart';
import 'sections/services_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      //
      children: const [
        HeroSection(),
        OurTechnologies(),
        ServicesSection(),
        AboutSection(),
        BannerSection(),
        AdvantagesSection(),
        FooterSection()
      ],
    );
  }
}
