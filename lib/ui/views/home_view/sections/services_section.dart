import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/gradient_text.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xFF141414), //Color(0x2F2933),
      child: FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 180.0),
          child: Column(
            children: [
              const SizedBox(
                height: 105,
              ),
              FadeIn(
                duration: const Duration(seconds: 1),
                delay: Durations.extralong3,
                //from:200,
                child: Row(
            
                  children: [
                      SizedBox(
                       width: 500,
                       child:  GradientText(
                        'Descubre los servicios que tenemos para ti',
                        gradient: const LinearGradient(
                          colors:[
                            Color(0xFFFFC2EE),
                            Color(0xFFFF00B8),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                          ),
                  
                        style: GoogleFonts.poppins(
                          fontSize: 52
                        ),
                        
                                           ),
                     ),
                    FadeIn(
                      duration: const Duration(seconds: 1),
                      delay: Durations.extralong4,
                      //from: 200,
                      child:  SizedBox(
                        width: 490,
                        child: Text(
                          'Ofrecemos soluciones tecnológicas personalizadas que incluyen innovación, calidad y eficiencia en cada proyecto. Nuestro equipo se dedica a desarrollar aplicaciones y plataformas que se ajustan a tus necesidades específicas, asegurando resultados excepcionales y una experiencia de usuario superior.',
                          //style: TextStyle(fontSize: 20, color: Color(0xFFFBFBFB)),
                          style: GoogleFonts.notoSerifMalayalam(
                            fontSize: 18,
                            color: Color(0xFFFBFBFB)
                          ),
                          //textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 30,
                ),
                child: const _ServicesCard(),
              ),

              const SizedBox(height: 70,),

              OutlinedButton(
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
                child: Text(
                  'Ver todos los servicios',
                  style: TextStyle(
                    color: Color(0xFFFF00B8), // Color del texto
                    fontSize: 16, // Tamaño del texto
                  ),
                ),
              ),
              const SizedBox(height: 105,),
            ],
          ),
        ),
      ),
    );
  }
}

class _ServicesCard extends StatelessWidget {
  const _ServicesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        const AnimatedContainerExample(title: 'Aplicaciones Moviles', info: 'Creamos apps móviles personalizadas y funcionales', icon: Icons.smartphone_outlined,),
        const SizedBox(
          width: 40,
        ),
        const AnimatedContainerExample(title: 'Desarrollo Web', info: 'Diseñamos sitios web robustos, atractivos y fáciles de usar', icon: Icons.web,),
        
        const SizedBox(
          width: 40,
        ),
        AnimatedContainerExample(title: 'Aplicaciones de escritorio', info: 'Desarrollamos software de escritorio ágil y confiable', icon: Icons.desktop_windows_outlined,)
        
      ],
    );
  }
}

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key, required this.title, required this.info, required this.icon});

  final String title;
  final String info;
  final IconData icon;

  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool _isHovered = false;

  void _onEnter(PointerEvent details) {
    setState(() {
      _isHovered = true;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _isHovered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: _onEnter,
      onExit: _onExit,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          //color: _isHovered ? Color.fromARGB(133, 184, 56, 45) : const Color(0xFF000000),
          borderRadius: BorderRadius.all(Radius.circular(_isHovered ? 15 : 10)),
          gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF000000), // Negro
                  Color(0xFF181818), // Púrpura oscuro
                ],
                stops: [0.0, 1.0], // Puntos de parada del gradiente
          ),
          border: Border.all(color: Color(0xFF404040) ),
          boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1), // Color de la sombra
                  offset: Offset(0, 4), // Desplazamiento X y Y
                  blurRadius: 15, // Radio de desenfoque
                  spreadRadius: 0, // Radio de expansión
                ),
          ],

        ),
        width: _isHovered ? 205 : 200,
        height: _isHovered ? 235 : 230,
        child:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: Color.fromARGB(209, 241, 145, 214),
                ),
                child: Icon(
                  widget.icon,
                  size: 35,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5.0,),
              Spacer(),
              SizedBox(
                width: 130,
                child: Text(
                  widget.title,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  
                  textAlign: TextAlign.left,
                ),
              ),
              Spacer(),
              Text(
                widget.info,
                textAlign: TextAlign.start,
                //style: TextStyle(color: Colors.white),
                style: GoogleFonts.notoSerif(
                    
                    color: Colors.white
                  ),
              ),
              Spacer(),
              SizedBox(height: 5.0,),
              Text(
                'Read more',
                style: TextStyle(color: Color(0xFF4F53C1)),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
