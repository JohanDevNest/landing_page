import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OurTechnologies extends StatelessWidget {
  const OurTechnologies({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
        color: Color(0xFF191919),
        border: Border.symmetric(horizontal: BorderSide(color: Color(0xFF393939)))
      ),

      child: Column(
        children: [
          SizedBox(height: 50,),
          Text(
            'Trabajamos con las mejores tecnologias',
            style: GoogleFonts.notoSerif(
              color: Color(0xFF7D7D7E),
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 60,),
          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.network(
                    'assets/tech_logos/flutter_logo.svg', // URL del archivo SVG
                    width: 40,
                    height: 40,
                    //colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    colorFilter: ColorFilter.mode(
                      Color(0xFFFF00B8), // Color del ícono
                      BlendMode.srcIn,
                    ),
                     // Color del ícono
                  ),
                  SizedBox(width: 30),
                  SvgPicture.network(
                    'assets/tech_logos/python_logo.svg',
                    width: 40,
                    height: 40,
                    colorFilter: ColorFilter.mode(
                      Color(0xFFFF00B8), // Color del ícono
                      BlendMode.srcIn,
                    ),
                    
                  ),
                  SizedBox(width: 30),
                  SvgPicture.network(
                    'assets/tech_logos/django_logo.svg',
                    width: 40,
                    height: 40,
                    colorFilter: ColorFilter.mode(
                      Color(0xFFFF00B8), // Color del ícono
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 30),
                  SvgPicture.network(
                    'assets/tech_logos/postgre_logo.svg',
                    width: 40,
                    height: 40,
                    colorFilter: ColorFilter.mode(
                      Color(0xFFFF00B8), // Color del ícono
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
        ],
      ),
    );
  }
}