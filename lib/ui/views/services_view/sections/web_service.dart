import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/custom_app_menu/utils/spacing.dart';

class WebService extends StatelessWidget {
  const WebService({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      
      child: Column(
        children: [
          verticalSpacing(50),
          const BuildPrincipalTechnologyRow(
            title: 'WEB',
            description: 'DevNest Innova ofrece una gama completa de servicios de desarrollo y mantenimiento de aplicaciones web para todas las plataformas principales, asegurando soluciones robustas y escalables.',
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
                imageUrl: 'assets/web.jpg',
                title: 'Desarrollo de apliaciones web',
                secondTitle: 'Apliaciones Web Escalables',
                firstDescription: 'Como desarrollador de ciclo completo, cubrimos toda la gama de servicios asociados con la creación de una aplicación web: desde la recopilación de requisitos, el diseño avanzado de prototipos y UI/UX, hasta la codificación, pruebas y despliegue en servidores web. Utilizamos tecnologías modernas para crear aplicaciones web robustas y escalables que satisfacen las necesidades de nuestros clientes.',
                secondDescription: 'El desarrollo de aplicaciones web escalables ayuda a reducir el costo general de los proyectos que requieren una solución flexible y adaptable. DevNest Innova cubre todo el ciclo de desarrollo de aplicaciones web, desde la creación de historias de usuario detalladas y la adaptación del contenido del cliente al entorno web hasta el diseño de la interfaz con un fuerte énfasis en la UX, programando la lógica de negocio y asegurando un rendimiento óptimo.'
              ),
            ),
          ),
          verticalSpacing(20),
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