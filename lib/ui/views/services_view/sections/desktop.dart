import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/custom_app_menu/utils/spacing.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

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
              'Escritorio',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 54,
              ),
            ),

            Divider(color: Colors.white,),
        
            verticalSpacing(20),
        
            _buildImage('assets/desktop.jpg'),
        
            verticalSpacing(30),
        
            Text(
              'DevNest Innova proporciona servicios integrales de desarrollo y mantenimiento de aplicaciones de escritorio, diseñadas para funcionar en todas las plataformas principales. Nos especializamos en crear aplicaciones de escritorio robustas y eficientes, adaptadas a las necesidades específicas de nuestros clientes y garantizando un alto rendimiento y usabilidad.',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
        
            verticalSpacing(30),
        
            Text(
              'Desarrollo de Aplicaciones de Escritorio', 
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
        
            verticalSpacing(10),
        
            Text(
            'Nuestro enfoque en el desarrollo de aplicaciones de escritorio cubre desde la recopilación de requisitos y el diseño de prototipos hasta la codificación, pruebas y despliegue en los entornos de escritorio de los usuarios. Utilizamos tecnologías avanzadas para garantizar que nuestras aplicaciones de escritorio sean fiables, seguras y de alto rendimiento.', 
             style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
        
            verticalSpacing(30),
        
            Text(
              'Soluciones de Escritorio Personalizadas',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
        
            verticalSpacing(10),
        
            Text(
              'El desarrollo de soluciones de escritorio personalizadas permite a nuestros clientes obtener aplicaciones que se ajustan perfectamente a sus procesos y necesidades. DevNest Innova se encarga de todo el ciclo de desarrollo, desde la creación de historias de usuario detalladas hasta el diseño de la interfaz con un fuerte énfasis en la experiencia del usuario, programando la lógica de negocio y asegurando una implementación eficiente y efectiva.',
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
          fit: BoxFit.fill,
        ),
      ),
    );
  }
