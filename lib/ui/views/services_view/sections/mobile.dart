import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/custom_app_menu/utils/spacing.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

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
              'Móvil',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 54,
              ),
            ),

            Divider(color: Colors.white,),
        
            verticalSpacing(20),
        
            _buildImage('assets/mobile.jpg'),
        
            verticalSpacing(30),
        
            Text(
              'DevNest Innova ofrece una gama completa de servicios de desarrollo y mantenimiento de aplicaciones móviles para todas las plataformas principales, incluyendo iOS, Android y aplicaciones híbridas.',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
        
            verticalSpacing(30),
        
            Text(
              'Aplicaciones Nativas y Híbridas con Flutter',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
        
            verticalSpacing(10),
        
            Text(
            'Como desarrollador de ciclo completo, cubrimos toda la gama de servicios asociados con la creación de una aplicación: desde la recopilación de requisitos, el diseño avanzado de prototipos y UI/UX, hasta la codificación, pruebas y publicación de la aplicación en el Google Play Store o App Store de Apple. Con Flutter, creamos aplicaciones nativas y multiplataforma que reducen el costo total del proyecto y facilitan el mantenimiento de una base de código compartida.',
             style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
        
            verticalSpacing(30),
        
            Text(
              'Aplicaciones Multiplataforma',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
        
            verticalSpacing(10),
        
            Text(
              'DevNest Innova ofrece una gama completa de servicios de desarrollo y mantenimiento de aplicaciones móviles para todas las plataformas principales, incluyendo iOS, Android y aplicaciones híbridas.',
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
