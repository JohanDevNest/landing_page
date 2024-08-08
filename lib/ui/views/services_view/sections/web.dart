import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/custom_app_menu/utils/spacing.dart';

class Web extends StatelessWidget {
  const Web({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Web',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 54,
              ),
            ),

            Divider(color: Colors.white,),
        
            verticalSpacing(20),
        
            _buildImage('assets/web.jpg'),
        
            verticalSpacing(30),
        
            Text(
              'DevNest Innova ofrece una gama completa de servicios de desarrollo y mantenimiento de aplicaciones web para todas las plataformas principales, asegurando soluciones robustas y escalables.',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
        
            verticalSpacing(30),
        
            Text(
              'Desarrollo de apliaciones web',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
        
            verticalSpacing(10),
        
            Text(
            'Como desarrollador de ciclo completo, cubrimos toda la gama de servicios asociados con la creación de una aplicación web: desde la recopilación de requisitos, el diseño avanzado de prototipos y UI/UX, hasta la codificación, pruebas y despliegue en servidores web. Utilizamos tecnologías modernas para crear aplicaciones web robustas y escalables que satisfacen las necesidades de nuestros clientes.',
             style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
        
            verticalSpacing(30),
        
            Text(
              'Apliaciones Web Escalables',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
        
            verticalSpacing(10),
        
            Text(
              'El desarrollo de aplicaciones web escalables ayuda a reducir el costo general de los proyectos que requieren una solución flexible y adaptable. DevNest Innova cubre todo el ciclo de desarrollo de aplicaciones web, desde la creación de historias de usuario detalladas y la adaptación del contenido del cliente al entorno web hasta el diseño de la interfaz con un fuerte énfasis en la UX, programando la lógica de negocio y asegurando un rendimiento óptimo.',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
              ),
            ),

            verticalSpacing(20)
          ],
        ),
      ),
    );
  }
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
          width: 1200,
          height: 600,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
