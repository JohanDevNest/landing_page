import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/custom_app_menu/utils/spacing.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20.0),
      color: const Color(0xFF141414),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpacing(40),
          _buildTitle(),
          verticalSpacing(50),
          _buildContent(),
          verticalSpacing(200),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      'Ventajas de nuestras soluciones:',
      style: GoogleFonts.notoSerif(
        fontSize: 34,
        color: const Color(0xFFEEEEEE),
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 250),
          _buildImage(),
          const SizedBox(width: 50),
          Expanded(child: _buildAdvantagesList()),
          const SizedBox(width: 250),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
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
    );
  }

  Widget _buildAdvantagesList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildAdvantage(
          icon: Icons.arrow_forward,
          title: 'Fácil de contactarnos',
          description:
              'Estamos siempre disponibles para ayudarte y responder a tus necesidades rápidamente',
        ),
        const SizedBox(height: 50),
        _buildAdvantage(
          icon: Icons.arrow_forward,
          title: 'Opinión de expertos gratuita',
          description:
              'Nuestro equipo de profesionales te ofrece asesoramiento especializado sin costo adicional.',
        ),
        const SizedBox(height: 50),
        _buildAdvantage(
          icon: Icons.arrow_forward,
          title: 'Obtén buenos resultados',
          description:
              'Nos enfocamos en ofrecer soluciones que no solo cumplen, sino que superan tus expectativas, garantizando resultados excepcionales.',
        ),
      ],
    );
  }

  Widget _buildAdvantage({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: const Color(0xFFFF00B8),
          size: 30.0,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.notoSerif(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                description,
                style: GoogleFonts.notoSerif(
                  color: const Color(0xFFCACACA),
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
