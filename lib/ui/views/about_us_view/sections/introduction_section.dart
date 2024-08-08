import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.95,
      height: 350,
      decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.white
            ),
            bottom: BorderSide(
              color: Colors.white
            )
          ),     
         //color: const Color(0xFF191919),
        ),
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Center(
        child: SizedBox(
          width: 800,
          child: Text(
              'DevNest Innova es un socio de clase mundial en el desarrollo de aplicaciones móviles, web y de escritorio. Desde su reciente fundación en 2023, DevNest Innova se ha establecido como una empresa emergente en Colombia, dedicada a ofrecer soluciones tecnológicas innovadoras. DevNest Innova aspira a ayudar a empresas de todo el mundo a crecer, mejorar su rendimiento, optimizar procesos empresariales y superar a su competencia.',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  
              ),
              textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}