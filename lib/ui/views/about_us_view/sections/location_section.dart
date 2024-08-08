import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/custom_app_menu/utils/spacing.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.95,
      height: MediaQuery.of(context).size.height,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
                'De donde venimos',
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
          ),
          
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: _buildRow(
                imageUrl: 'assets/bogota.jpg',
                title: 'Construido en Colombia',
                firstDescription:
                    'Originalmente conocida por su rica herencia cultural y producción de café, Colombia se ha transformado en uno de los centros de tecnología e innovación de más rápido crecimiento en América Latina.',
                secondDescription:
                    'Fundada y con sede en Colombia, DevNest Innova prospera dentro de la vibrante comunidad de jóvenes empresas innovadoras que crecen en el país.',
              ),
            ),
          ),
          SizedBox()
        ],
      ),
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
        ? [textWidget, const SizedBox(width: 70), imageWidget]
        : [imageWidget, const SizedBox(width: 70), textWidget];

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }

  Widget _buildImage(String imageUrl) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            spreadRadius: 4,
            blurRadius: 20,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.network(
          imageUrl,
          width: 480,
          height: 300,
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
        Text(
          title,
          style: GoogleFonts.notoSerif(
            fontSize: 36,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                color: Colors.black54,
              ),
            ],
          ),
          textAlign: TextAlign.start,
        ),
        verticalSpacing(20),
        Container(
          width: 500,
          child: Text(
            firstDescription,
            style: GoogleFonts.notoSerif(
              fontSize: 18,
              color: Colors.white70,
              fontWeight: FontWeight.w300,
              height: 1.5,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        verticalSpacing(15),
        Container(
          width: 500,
          child: Text(
            secondDescription,
            style: GoogleFonts.notoSerif(
              fontSize: 18,
              color: Colors.white70,
              fontWeight: FontWeight.w300,
              height: 1.5,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
