import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              SizedBox(height: 80,),
              Row(
                children: [
                  Container(
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
                    'assets/about_first.png',
                    width: 280,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                  const SizedBox(width: 30),
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text('Impulsando tu negocio con tecnología de vanguardia',
                          //style: TextStyle(fontSize: 18, color: Colors.white),
                          style: GoogleFonts.notoSerif(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 300,
                        child: Text(
                          'Transformamos tus ideas en soluciones digitales innovadoras que optimizan tus procesos y potencian tu crecimiento. Colaboramos contigo para crear aplicaciones y plataformas que realmente marcan la diferencia.',
                          //style: TextStyle(fontSize: 12, color: Colors.white),
                          style: GoogleFonts.notoSerif(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(height: 15,),

                      OutlinedButton.icon(
                      onPressed: () {
                        // Acción del botón
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xFFFF00B8), // Color de fondo rosa
                        side: BorderSide(color: Color(0xFFFF00B8), width: 2), // Color y grosor del borde
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // Radio del borde
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5), // Padding del botón
                      ),
                      icon: Icon(
                        Icons.arrow_forward, // Ícono de flecha
                        color: Colors.white, // Color del ícono
                        size: 14,
                      ),
                      iconAlignment: IconAlignment.end,
                      label: Text(
                        'Conócenos',
                        style: TextStyle(
                          color: Colors.white, // Color del texto
                          fontSize: 12, // Tamaño del texto
                        ),
                      ),
                    ),
                       
                    ],
                  )
                ],
              ),
              SizedBox(height: 50.0,),
              Row(
                children: [
                
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text('Impulsando tu negocio con tecnología de vanguardia',
                          style: GoogleFonts.notoSerif(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 300,
                        child: Text(
                          'Transformamos tus ideas en soluciones digitales innovadoras que optimizan tus procesos y potencian tu crecimiento. Colaboramos contigo para crear aplicaciones y plataformas que realmente marcan la diferencia.',
                          style: GoogleFonts.notoSerif(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      SizedBox(height: 15,),
                      OutlinedButton.icon(
                      onPressed: () {
                        // Acción del botón
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xFFFF00B8), // Color de fondo rosa
                        side: BorderSide(color: Color(0xFFFF00B8), width: 2), // Color y grosor del borde
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // Radio del borde
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5), // Padding del botón
                      ),
                      icon: Icon(
                        Icons.arrow_forward, // Ícono de flecha
                        color: Colors.white, // Color del ícono
                        size: 14,
                      ),
                      iconAlignment: IconAlignment.end,
                      label: Text(
                        'Descubre como',
                        style: TextStyle(
                          color: Colors.white, // Color del texto
                          fontSize: 12, // Tamaño del texto
                        ),
                      ),
                    ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Container(
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
                    'assets/about_second.png',
                    width: 280,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                ],
              ),
              SizedBox(height: 80,)
            ],
          ),
        ),
      ),
    );
  }
}
