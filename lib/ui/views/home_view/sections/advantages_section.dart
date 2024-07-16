import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20.0),
      color: const Color(0xFF141414),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Ventajas de nuestras soluciones:',
            style: GoogleFonts.notoSerif(
              fontSize: 34,
              color: Color(0xFFEEEEEE),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 250,),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      'assets/advantages.png',
                      width: 250,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 50.0),
                //Spacer(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildAdvantage(
                        icon: Icons.arrow_forward,
                        title: 'Fácil de contactarnos',
                        description: 'Estamos siempre disponibles para ayudarte y responder a tus necesidades rápidamente',
                      ),
                      SizedBox(height: 50.0),
                      _buildAdvantage(
                        icon: Icons.arrow_forward,
                        title: 'Opinión de expertos gratuita',
                        description: 'Nuestro equipo de profesionales te ofrece asesoramiento especializado sin costo adicional.',
                      ),
                      SizedBox(height: 50.0),
                      _buildAdvantage(
                        icon: Icons.arrow_forward,
                        title: 'Obtén buenos resultados',
                        description: 'Nos enfocamos en ofrecer soluciones que no solo cumplen, sino que superan tus expectativas, garantizando resultados excepcionales.',
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 250,)
              ],
            ),
          ),
          const SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }

  Widget _buildAdvantage({required IconData icon, required String title, required String description}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Color(0xFFFF00B8),
          size: 30.0,
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.notoSerif(
                  color: Color(0xFFFFFFFF),
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                description,
                style: GoogleFonts.notoSerif(
                  color: Color(0xFFCACACA),
                  fontSize: 17.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}