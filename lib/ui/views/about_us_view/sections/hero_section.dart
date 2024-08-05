import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/custom_app_menu/widgets/custom_flat_button.dart';
import '../../home_view/sections/utils/gradient_text.dart';

class AboutHeroSection extends StatelessWidget {
  const AboutHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return (constraints.maxWidth > 1100)
          ? const _TabletDesktopHeroView()
          : const _MobileHeroView();
    });
  }
}

//TABLET AND DESKTOP VIEW FOR DEVICES > 1100PX

class _TabletDesktopHeroView extends StatelessWidget {
  const _TabletDesktopHeroView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black,        // Color negro predominante
            Colors.black87,      // Negro con un toque de transparencia
            Colors.black87,      // Negro más claro
            Colors.black,   // Gris oscuro
          ],
          stops: [0.0, 0.5, 0.5, 1.0],
        ),
      ),
      child: Center(
        child: FadeInUp(
          curve: Curves.linear,
          from: 200,
          duration: const Duration(milliseconds: 800),
          child: Container(
            width: MediaQuery.of(context).size.width*0.6,
            
            child: Column(
              mainAxisSize: MainAxisSize.min,
              
              children: [
                 GradientText(
                  'Sobre nosotros',
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFFFC2EE),
                      Color(0xFFFF0088),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  style: GoogleFonts.notoSerif(
                    fontSize: 70,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 20),
                 GradientText(
                  'Innovando con pasión. Nos dedicamos a superar los límites de la tecnología y la creatividad, y creemos que se refleja en todo lo que hacemos.',
                  gradient: const LinearGradient(
                    colors:[
                      Color(0xFFFFC2EE),
                      Color(0xFFFF00B8),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                    ),
                  
                  style: GoogleFonts.notoSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    
                  ),
                  
                ),
                const SizedBox(height: 30),
                CustomFlatButton(
                  text: 'Quiero una consulta gratuita',
                  onPressed: () {},
                  fontSize: 20,
                  backGroundColor: const Color(0xFF6D11B4),
                  withIcon: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//MOBILE VIEW FOR DEVICES < 1100PX

class _MobileHeroView extends StatelessWidget {
  const _MobileHeroView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}
