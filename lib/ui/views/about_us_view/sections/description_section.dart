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
      
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Nuestros principios',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            verticalSpacing(50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
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
                      verticalSpacing(30),
                      _buildPrinciple(
                        title: 'Excelencia',
                        description:
                            'Estamos comprometidos a alcanzar el más alto estándar de calidad en todos los aspectos del negocio. Y estamos dedicados a la mejora continua, esforzándonos por ser los mejores para todos nuestros clientes.',
                      ),
                    ],
                  ),
                ),
                horizontalSpacing(30),
                Expanded(
                  child: Column(
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
                      verticalSpacing(30),
                      _buildPrinciple(
                        title: 'Simplicidad en su núcleo',
                        description:
                            'La transparencia y la honestidad son pilares clave en Devnest, y nos esforzamos por ganar la confianza de todos nuestros clientes y socios.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrinciple({required String title, required String description}) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        //color: Colors.black.withOpacity(0.5),
        color: const Color(0xFF141414),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.notoSerif(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 2.0,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: GoogleFonts.notoSerif(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
