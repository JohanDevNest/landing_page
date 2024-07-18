import 'package:flutter/material.dart';

import '../../layouts/main_layout/main_layout_page.dart';
import 'sections/about_section.dart';
import 'sections/advantages_section.dart';
import 'sections/banner.dart';
import 'sections/footer_section.dart';
import 'sections/hero_section.dart';
import 'sections/our_technologies.dart';
import 'sections/services_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (scrollInfo.metrics.axis == Axis.vertical) {
          final MainLayoutPageState? layoutPageState =
              context.findAncestorStateOfType<MainLayoutPageState>();
          layoutPageState?.updateScrollPosition(scrollInfo.metrics.pixels);
        }
        return true;
      },
      child: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          HeroSection(),
          OurTechnologies(),
          ServicesSection(),
          AboutSection(),
          BannerSection(),
          AdvantagesSection(),
          FooterSection(),
        ],
      ),
    );
  }
}
