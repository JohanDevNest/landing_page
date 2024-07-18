import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/gradient_text.dart';
import 'utils/spacing.dart';
import 'widgets/buttons/outlined_button.dart';
import 'widgets/services_container.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xFF141414),
      child: FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120.0),
          child: Column(
            children: [
              verticalSpacing(105),
              FadeInUp(
                duration: const Duration(seconds: 1),
                delay: Durations.extralong3,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      SizedBox(
                       width: 600,
                       height: 300,
                       //color: Colors.blue,
                       child:  GradientText(
                        'Descubre los servicios que tenemos para ti',
                        gradient: const LinearGradient(
                          colors:[
                            Color(0xFFFFC2EE),
                            Color(0xFFFF00B8),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                          ),
                  
                        style: GoogleFonts.poppins(
                          fontSize: 74
                        ),
                      ),
                     ),
                    horizontalSpacing(60),
                    FadeInUp(
                      duration: const Duration(seconds: 1),
                      delay: Durations.extralong4,
                      //from: 200,
                      child:  SizedBox(
                        width: 705,
                        height: 270,
                        //color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Text(
                            'Ofrecemos soluciones tecnológicas personalizadas que incluyen innovación, calidad y eficiencia en cada proyecto. Nuestro equipo se dedica a desarrollar aplicaciones y plataformas que se ajustan a tus necesidades específicas, asegurando resultados excepcionales y una experiencia de usuario superior.',
                            style: GoogleFonts.notoSerifMalayalam(
                              fontSize: 26,
                              color: Color(0xFFFBFBFB)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              verticalSpacing(130),
              
              Container(
                padding: const EdgeInsets.symmetric( horizontal: 80, vertical: 30),
                child:  Row(
                          children: [
                            const ServicesContainer(title: 'Aplicaciones Moviles', info: 'Creamos apps móviles personalizadas y funcionales', icon: Icons.smartphone_outlined,),
                            horizontalSpacing(40),
                            const ServicesContainer(title: 'Desarrollo Web', info: 'Diseñamos sitios web robustos, atractivos y fáciles de usar', icon: Icons.web,),
                            horizontalSpacing(40),
                            const ServicesContainer(title: 'Aplicaciones de escritorio', info: 'Desarrollamos software de escritorio ágil y confiable', icon: Icons.desktop_windows_outlined,)
                          ],
                        )
              ),

              verticalSpacing(70),
              const OutlinedButtonCustom(text: 'Ver todos los servicios'),
              verticalSpacing(105),
            ],
          ),
        ),
      ),
    );
  }
}