import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../shared/custom_flat_button.dart';
import 'utils/gradient_text.dart';

class HeroView extends StatelessWidget {
  const HeroView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return (constraints.maxWidth > 1100)
          ? const _TabletDesktopHeroView()
          : const _MobileHeroView();
    });
  }
}

//TABLET AND DESKTOP VIEW FOR DEVICES > 905PX

class _TabletDesktopHeroView extends StatelessWidget {
  const _TabletDesktopHeroView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color(0xFF2F2933),
      child: Row(
        children: [
          // first container: hero title, description, action button
          FadeInLeft(
            curve: Curves.linear,
            from: 200,
            duration: const Duration(milliseconds: 800),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              height: 600,
              child: Stack(
                children: [
                  Positioned(
                    top: 140,
                    left: 90,
                    child: SizedBox(
                      height: 500.0,
                      width: MediaQuery.of(context).size.width * 0.60,
                      // column with hero title, description, action button
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const GradientText(
                            'Transformando ideas en soluciones digitales',
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFCF2E6),
                                Color(0xFFFF0088),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Desde aplicaciones móviles intuitivas hasta plataformas web  y soluciones de escritorio eficientes, DevNest Innova transforma tus ideas en realidad.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 30),
                          CustomFlatButton(
                            text: 'Contactanos',
                            onPressed: () {},
                            fontSize: 25,
                            backGroundColor: const Color(0xFF6D11B4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //second container: hero robot image
          FadeInLeft(
            duration: const Duration(milliseconds: 800),
            delay: Durations.medium3,
            curve: Curves.bounceOut,
            child: SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width * 0.35,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.network(
                    "assets/hero_view_robot.png",
                    fit: BoxFit.contain,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

//MOBILE VIEW FOR DEVICES < 905PX

class _MobileHeroView extends StatelessWidget {
  const _MobileHeroView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color(0xFF2F2933),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Container(
            alignment: Alignment.center,
            //color: Colors.green,
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.30,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  "assets/hero_view_robot.png",
                  fit: BoxFit.contain,
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            //color: Colors.orange,
            child: Column(
              children: [
                const Text(
                  'Transformando ideas en soluciones digitales',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const Text(
                  'Desde aplicaciones móviles intuitivas hasta plataformas web  y soluciones de escritorio eficientes, DevNest Innova transforma tus ideas en realidad.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF6D11B4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const SizedBox(
                    width: 200,
                    height: 40,
                    child: Center(
                      child: Text(
                        'Contactanos',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
