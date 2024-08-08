import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/custom_app_menu/utils/spacing.dart';

class DesktopService extends StatelessWidget {
  const DesktopService({super.key});

 @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      
      child: Column(
        children: [
          verticalSpacing(50),
          const BuildPrincipalTechnologyRow(
            title: 'Escritorio',
            description: 'DevNest Innova proporciona servicios integrales de desarrollo y mantenimiento de aplicaciones de escritorio, diseñadas para funcionar en todas las plataformas principales. Nos especializamos en crear aplicaciones de escritorio robustas y eficientes, adaptadas a las necesidades específicas de nuestros clientes y garantizando un alto rendimiento y usabilidad.',
          ),

          verticalSpacing(10),
          Container(
            width: MediaQuery.of(context).size.width*0.95,
            child: Divider(color: Colors.white)),
          verticalSpacing(10),

          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: _buildRow(
                imageUrl: 'assets/desktop.jpg', 
                title: 'Desarrollo de Aplicaciones de Escritorio', 
                secondTitle: 'Soluciones de Escritorio Personalizadas',
                firstDescription: 'Nuestro enfoque en el desarrollo de aplicaciones de escritorio cubre desde la recopilación de requisitos y el diseño de prototipos hasta la codificación, pruebas y despliegue en los entornos de escritorio de los usuarios. Utilizamos tecnologías avanzadas para garantizar que nuestras aplicaciones de escritorio sean fiables, seguras y de alto rendimiento.', 
                secondDescription: 'El desarrollo de soluciones de escritorio personalizadas permite a nuestros clientes obtener aplicaciones que se ajustan perfectamente a sus procesos y necesidades. DevNest Innova se encarga de todo el ciclo de desarrollo, desde la creación de historias de usuario detalladas hasta el diseño de la interfaz con un fuerte énfasis en la experiencia del usuario, programando la lógica de negocio y asegurando una implementación eficiente y efectiva.'
                ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow({
    required String imageUrl,
    required String title,
    required String secondTitle,
    required String firstDescription,
    required String secondDescription,

    bool reverse = false,
  }) {
    Widget imageWidget = _buildImage(imageUrl);
    Widget textWidget = _buildTextSection(title, secondTitle, firstDescription, secondDescription);

    List<Widget> children = reverse
        ? [textWidget, const SizedBox(width: 150), imageWidget]
        : [imageWidget, const SizedBox(width: 150), textWidget];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
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
          width: 520,
          height: 350,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildTextSection(String title, String secondTitle, String firstDescription, String secondDescription) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 600,
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
        verticalSpacing(25),
        SizedBox(
          width: 700,
          child: Text(
            firstDescription,
            style: GoogleFonts.notoSerif(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        verticalSpacing(60),
        SizedBox(
          width: 500,
          child: Text(
            secondTitle,
            style: GoogleFonts.notoSerif(
              fontSize: 34,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        verticalSpacing(25),
        SizedBox(
          width: 700,
          child:  Text(
            secondDescription,
            style: GoogleFonts.notoSerif(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.start,
          ),
        )
      ],
    );
  }
 
}

class BuildPrincipalTechnologyRow extends StatelessWidget {
  const BuildPrincipalTechnologyRow({
    super.key, required this.title, required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 100,
            color: Colors.white
          ),
        ),
        horizontalSpacing(30),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpacing(10),
            SizedBox(
              width: 800,
              child: Column(
                children: [
                  Text(
                    description,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  verticalSpacing(5.0),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}