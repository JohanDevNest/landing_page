import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 450,
      color: Color(0xFF2F2933),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          // SizedBox(
          //   width: 600,
          //   child: Text(
          //     'Contactanos para una cotización con nuestros expertos totalmente gratuita',
          //     style: GoogleFonts.notoSerif(
          //       color: Color(0xFFEEEEEE),
          //       fontSize: 28
            
          //     ),
          //     textAlign: TextAlign.center,
              
          //     ),
          // ),
          SizedBox(
            width: 600,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.notoSerif(
                color: Color(0xFFEEEEEE),
                fontSize: 28
                ),
                children: [
                    TextSpan(text: 'Contáctanos para una '),
                    TextSpan(
                      text: 'cotización',
                      style: GoogleFonts.notoSerif(
                        color: Color(0xFFFF00B8),
                        fontSize: 28
                      ),
                    ),
                    TextSpan(text: ' con nuestros expertos '),
                    TextSpan(
                      text: 'totalmente gratuita',
                      style: GoogleFonts.notoSerif(
                        color: Color(0xFFFF00B8),
                        fontSize: 28
                      ),
                    ),
                ]
              ),              
            ),
          ),
          SizedBox(height: 30,),
          SizedBox(
            width: 400,
            child: Text(
              'Recibe una estimación personalizada sin compromiso. Nuestro equipo está listo para ayudarte. ¡Contáctanos hoy!',
              style: GoogleFonts.notoSerif(
                color: Color(0xFFEEEEEE),
                fontSize: 20,
            
              ),
              textAlign: TextAlign.center,
              
              ),
          ),
          SizedBox(height: 40,),
          Text(
            'Llamanos al +57 313 241 92 78 ',
            style: GoogleFonts.notoSerif(
              fontSize: 15,
              color: Color(0xFFFF00B8)
            ),
          
          ),

          SizedBox(height: 50,),
          OutlinedButton.icon(
                onPressed: () {
                  // Acción del botón
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xFFFF00B8), width: 2), // Color y grosor del borde
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Radio del borde
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20), // Padding del botón
                ),
                label: Text(
                  'Llamar',
                  style: TextStyle(
                    color: Color(0xFFFF00B8), // Color del texto
                    fontSize: 18, // Tamaño del texto
                  ),
                ),
                icon: Icon(
                        Icons.call_outlined, // Ícono de flecha
                        color: Color(0xFFFF00B8), // Color del ícono
                        size: 18,
                      ),
                iconAlignment: IconAlignment.end,
          ),
       ],
      ),
    );
  }
}