import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/custom_app_menu/utils/spacing.dart';

class OurTechnologies extends StatelessWidget {
  const OurTechnologies({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: const BoxDecoration(
        color: Color(0xFF191919),
        border: Border.symmetric(horizontal: BorderSide(color: Color(0xFF393939)))
      ),

      child: Column(
        children: [
          const SizedBox(height: 30,),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.poppins(
                color: Color.fromARGB(255, 185, 185, 185),
                fontSize: 22,
                fontWeight: FontWeight.w700,
                ),
                children: [
                    TextSpan(text: 'NUESTRAS '),
                    TextSpan(
                      text: 'TECNOLOGIAS',
                      style: GoogleFonts.poppins(
                        color: Color(0xFFFF00B8),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                ]
            ),              
          ),
          verticalSpacing(10),
          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'assets/tech_logos/flutter_logo.png', // URL del archivo SVG
                    width: 120,
                    height: 90,
                    fit: BoxFit.contain,
                     // Color del ícono
                  ),
                  horizontalSpacing(30),
                  Image.network(
                    'assets/tech_logos/python_logo.png', // URL del archivo SVG
                    width: 120,
                    height: 90,
                    fit: BoxFit.contain,
                     // Color del ícono
                  ),
                  horizontalSpacing(30),
                  Image.network(
                    'assets/tech_logos/django_logo.png', // URL del archivo SVG
                    width: 120,
                    height: 90,
                    fit: BoxFit.contain,
                     // Color del ícono
                  ),
                  horizontalSpacing(30),
                  Image.network(
                    'assets/tech_logos/postgre_logo.png', // URL del archivo SVG
                    width: 180,
                    height: 120,
                    fit: BoxFit.contain,
                     // Color del ícono
                  ),
                ],
              ),
        ],
      ),
    );
  }
}