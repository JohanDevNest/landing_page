import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: const Color(0xFF141414),
      color: const Color(0xFF111111),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    "assets/logo.png",
                    width: 200,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sobre nosotros',
                    style: GoogleFonts.notoSerif(
                      fontSize: 18,
                      color: Color(0xFFEEEEEE),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nuestro equipo',
                    style: GoogleFonts.notoSerif(
                      fontSize: 14,
                      color: Color(0xFFCACACA),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    'Nuestro método',
                    style: GoogleFonts.notoSerif(
                      fontSize: 14,
                      color: Color(0xFFCACACA),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    'Contacto',
                    style: GoogleFonts.notoSerif(
                      fontSize: 14,
                      color: Color(0xFFCACACA),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nuestros servicios',
                    style: GoogleFonts.notoSerif(
                      fontSize: 18,
                      color: Color(0xFFEEEEEE),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Aplicaciones móviles',
                    style: GoogleFonts.notoSerif(
                      fontSize: 14,
                      color: Color(0xFFCACACA),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    'Desarrollo web',
                    style: GoogleFonts.notoSerif(
                      fontSize: 14,
                      color: Color(0xFFCACACA),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    'Aplicaciones de escritorio',
                    style: GoogleFonts.notoSerif(
                      fontSize: 14,
                      color: Color(0xFFCACACA),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Legal',
                    style: GoogleFonts.notoSerif(
                      fontSize: 18,
                      color: Color(0xFFEEEEEE),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Política de cookies',
                    style: GoogleFonts.notoSerif(
                      fontSize: 14,
                      color: Color(0xFFCACACA),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    'Términos y condiciones',
                    style: GoogleFonts.notoSerif(
                      fontSize: 14,
                      color: Color(0xFFCACACA),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    'Política de privacidad',
                    style: GoogleFonts.notoSerif(
                      fontSize: 14,
                      color: Color(0xFFCACACA),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contacto',
                    style: GoogleFonts.notoSerif(
                      fontSize: 18,
                      color: Color(0xFFEEEEEE),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'soporte@devnestinnova.com',
                    style: GoogleFonts.notoSerif(
                      fontSize: 14,
                      color: Color(0xFFCACACA),
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    '+57 310 282 5418',
                    style: GoogleFonts.notoSerif(
                      fontSize: 14,
                      color: Color(0xFFCACACA),
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.red),
                        onPressed: () {
                          // Acción cuando se presiona el icono
                        },
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.red),
                        onPressed: () {
                          // Acción cuando se presiona el icono
                        },
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.red),
                        onPressed: () {
                          // Acción cuando se presiona el icono
                        },
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.xTwitter, color: Colors.red),
                        onPressed: () {
                          // Acción cuando se presiona el icono
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(color: Color(0xFFCACACA)),
          SizedBox(height: 10),
          Text(
            'Copyright © 2024 Devnest Innova S.A.S. All rights reserved.',
            style: GoogleFonts.notoSerif(
              fontSize: 12,
              color: Color(0xFFCACACA),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Privacy Policy',
                  style: GoogleFonts.notoSerif(
                    fontSize: 12,
                    color: Color(0xFFCACACA),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Terms of Use',
                  style: GoogleFonts.notoSerif(
                    fontSize: 12,
                    color: Color(0xFFCACACA),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
