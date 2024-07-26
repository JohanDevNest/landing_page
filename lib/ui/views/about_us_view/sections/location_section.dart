import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/custom_app_menu/utils/spacing.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xFF141414),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: _buildRow(
              imageUrl: 'assets/bogota.jpg', 
              title: 'Construido en Colombia', 
              firstDescription: 'Originalmente conocida por su rica herencia cultural y producción de café, Colombia se ha transformado en uno de los centros de tecnología e innovación de más rápido crecimiento en América Latina.', 
              secondDescription: 'Fundada y con sede en Colombia, DevNest Innova prospera dentro de la vibrante comunidad de jóvenes empresas innovadoras que crecen en el país.'
              ),
          ),
        ),
      )
    );
  }


  Widget _buildRow({
    required String imageUrl,
    required String title,
    required String firstDescription,
    required String secondDescription,
    bool reverse = false,
  }) {
    Widget imageWidget = _buildImage(imageUrl);
    Widget textWidget = _buildTextSection(title, firstDescription, secondDescription);

    List<Widget> children = reverse
        ? [textWidget, const SizedBox(width: 150), imageWidget]
        : [imageWidget, const SizedBox(width: 150), textWidget];

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: children,
    );
  }

  Widget _buildImage(String imageUrl) {
    return Container(
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
        borderRadius: BorderRadius.circular(5.0),
        child: Image.network(
          imageUrl,
          width: 480,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildTextSection(String title, String firstDescription, String secondDescription) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 500,
          child: Text(
            title,
            style: GoogleFonts.notoSerif(
              fontSize: 34,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        verticalSpacing(10),
        SizedBox(
          width: 600,
          child: Column(
            children: [
              Text(
                firstDescription,
                style: GoogleFonts.notoSerif(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.start,
              ),
              verticalSpacing(5.0),
              Text(
                secondDescription,
                style: GoogleFonts.notoSerif(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),

        ),
        verticalSpacing(15),
      ],
    );
  }
}