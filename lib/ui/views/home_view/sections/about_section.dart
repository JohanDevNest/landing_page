import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/spacing.dart';
import 'widgets/buttons/customized_icon_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color(0xFF141414),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70.0),
          child: Column(
            children: [
              verticalSpacing(80),
              _buildRow(
                imageUrl: 'assets/about_first.png',
                title: 'Impulsando tu negocio con tecnología de vanguardia',
                description:
                    'Transformamos tus ideas en soluciones digitales innovadoras que optimizan tus procesos y potencian tu crecimiento. Colaboramos contigo para crear aplicaciones y plataformas que realmente marcan la diferencia.',
                buttonText: 'Conócenos',
              ),
              verticalSpacing(50),
              _buildRow(
                imageUrl: 'assets/about_second.png',
                title: 'Impulsando tu negocio con tecnología de vanguardia',
                description:
                    'Transformamos tus ideas en soluciones digitales innovadoras que optimizan tus procesos y potencian tu crecimiento. Colaboramos contigo para crear aplicaciones y plataformas que realmente marcan la diferencia.',
                buttonText: 'Descubre cómo',
                reverse: true,
              ),
              verticalSpacing(80),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow({
    required String imageUrl,
    required String title,
    required String description,
    required String buttonText,
    bool reverse = false,
  }) {
    Widget imageWidget = _buildImage(imageUrl);
    Widget textWidget = _buildTextSection(title, description, buttonText);

    List<Widget> children = reverse
        ? [textWidget, const SizedBox(width: 150), imageWidget]
        : [imageWidget, const SizedBox(width: 150), textWidget];

    return Row(
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

  Widget _buildTextSection(String title, String description, String buttonText) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 500,
          child: Text(
            title,
            style: GoogleFonts.notoSerif(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        verticalSpacing(10),
        SizedBox(
          width: 500,
          child: Text(
            description,
            style: GoogleFonts.notoSerif(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        verticalSpacing(15),
        // OutlinedButton.icon(
        //   onPressed: () {
        //     // Acción del botón
        //   },
        //   style: OutlinedButton.styleFrom(
        //     backgroundColor: const Color(0xFFFF00B8), // Color de fondo rosa
        //     side: const BorderSide(color: Color(0xFFFF00B8), width: 2), // Color y grosor del borde
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(30), // Radio del borde
        //     ),
        //     padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5), // Padding del botón
        //   ),
        //   icon: const Icon(
        //     Icons.arrow_forward, // Ícono de flecha
        //     color: Colors.white, // Color del ícono
        //     size: 14,
        //   ),
        //   iconAlignment: IconAlignment.end,
        //   label: Text(
        //     buttonText,
        //     style: const TextStyle(
        //       color: Colors.white, // Color del texto
        //       fontSize: 18, // Tamaño del texto
        //     ),
        //   ),
        // ),
        // CustomFlatButton(
        //   text: buttonText,
        //   onPressed: () {},
        //   fontSize: 15,
        //   backGroundColor: const Color(0xFFFF00B8),
        //   withIcon: true,
        //   iconSize: 18,
        // ),
        CustomizedIconButton(
          text: buttonText, 
          onPressed: (){},
          backGroundColor: const Color(0xFFFF00B8),
          withIcon: true,
          iconSize: 18,
        ),
      ],
    );
  }
}
