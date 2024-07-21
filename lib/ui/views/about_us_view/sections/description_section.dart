import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/custom_app_menu/utils/spacing.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue,//Color(0xFF141414),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Nuestros principios',
                  style: GoogleFonts.notoSerif(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                verticalSpacing(30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildPrinciple(
                          title: 'Cuestionar las normas',
                          description:
                              'Cuando la gente piensa en innovación, a menudo imagina ideas audaces y tecnología de vanguardia. En Devnest Innova, no solo seguimos las tendencias; las establecemos. Creemos que siempre hay una mejor manera, y nos esforzamos por encontrarla.',
                        ),
                        verticalSpacing(30),
                        _buildPrinciple(
                          title: 'Inclusividad en la innovación',
                          description:
                              'La innovación debe ser accesible para todos. Nos comprometemos a crear un entorno donde cada idea cuente y cada voz sea escuchada. Al abrazar la diversidad, creamos tecnología que sirve a una audiencia más amplia y fomenta una cultura de inclusividad.',
                        ),
                      ],
                    ),
                    horizontalSpacing(30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildPrinciple(
                          title: 'Atención al detalle',
                          description:
                              'Vemos la tecnología como una forma de arte y nos dedicamos a crear soluciones que sean tanto funcionales como hermosas. Nos enfocamos en los detalles más pequeños porque sabemos que se suman para crear una experiencia superior para el usuario.',
                        ),
                        verticalSpacing(30),
                        _buildPrinciple(
                          title: 'Simplicidad en su núcleo',
                          description:
                              'Incluso la tecnología más avanzada debe ser fácil de usar. Nuestro objetivo es crear experiencias intuitivas y fluidas que proporcionen un valor inmediato y crezcan con las necesidades de nuestros usuarios.',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPrinciple({required String title, required String description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 600,
          child: Text(
            title,
            style: GoogleFonts.notoSerif(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 550,
          child: Text(
            description,
            style: GoogleFonts.notoSerif(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}