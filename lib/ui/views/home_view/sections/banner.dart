import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 450,
      color: const Color(0xFF2F2933),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          _buildRichText(),
          const SizedBox(height: 30),
          _buildSubtitle(),
          const SizedBox(height: 40),
          _buildContactNumber(),
          const SizedBox(height: 50),
          _buildCallButton(),
        ],
      ),
    );
  }

  Widget _buildRichText() {
    return SizedBox(
      width: 600,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: GoogleFonts.notoSerif(
            color: const Color(0xFFEEEEEE),
            fontSize: 28,
          ),
          children: [
            const TextSpan(text: 'Contáctanos para una '),
            TextSpan(
              text: 'cotización',
              style: GoogleFonts.notoSerif(
                color: const Color(0xFFFF00B8),
                fontSize: 28,
              ),
            ),
            const TextSpan(text: ' con nuestros expertos '),
            TextSpan(
              text: 'totalmente gratuita',
              style: GoogleFonts.notoSerif(
                color: const Color(0xFFFF00B8),
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubtitle() {
    return SizedBox(
      width: 400,
      child: Text(
        'Recibe una estimación personalizada sin compromiso. Nuestro equipo está listo para ayudarte. ¡Contáctanos hoy!',
        style: GoogleFonts.notoSerif(
          color: const Color(0xFFEEEEEE),
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildContactNumber() {
    return Text(
      'Llámanos al +57 313 241 92 78',
      style: GoogleFonts.notoSerif(
        fontSize: 15,
        color: const Color(0xFFFF00B8),
      ),
    );
  }

  Widget _buildCallButton() {
    return OutlinedButton.icon(
      onPressed: () {
        // Acción del botón
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFFFF00B8), width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      ),
      icon: const Icon(
        Icons.call_outlined,
        color: Color(0xFFFF00B8),
        size: 18,
      ),
      label: const Text(
        'Llamar',
        style: TextStyle(
          color: Color(0xFFFF00B8),
          fontSize: 18,
        ),
      ),
      iconAlignment: IconAlignment.end,
    );
  }
}
