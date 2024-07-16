import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
                height: 25,
              ),
              FadeIn(
                duration: const Duration(seconds: 1),
                delay: Durations.extralong3,
                //from:200,
                child: Row(
            
                  children: [
                     const SizedBox(
                       width: 500,
                       child:  GradientText(
                        'Descubre los servicios que tenemos para ti',
                        gradient: LinearGradient(
                          colors:[
                            Color(0xFFFFC2EE),
                            Color(0xFFFF00B8),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                          ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 52,
                        ),
                        //textAlign: TextAlign.start,
                                           ),
                     ),
                    FadeIn(
                      duration: const Duration(seconds: 1),
                      delay: Durations.extralong4,
                      //from: 200,
                      child: const SizedBox(
                        width: 400,
                        child: Text(
                          'Ofrecemos soluciones tecnológicas personalizadas que incluyen innovación, calidad y eficiencia en cada proyecto. Nuestro equipo se dedica a desarrollar aplicaciones y plataformas que se ajustan a tus necesidades específicas, asegurando resultados excepcionales y una experiencia de usuario superior.',
                          style: TextStyle(fontSize: 20, color: Color(0xFFFBFBFB)),
                          textAlign: TextAlign.center,
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
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 30,
                ),
                child: const _ServicesCard(),
              )
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
        // Container(
        //   decoration: BoxDecoration(color: Color(0x33FF6F61), borderRadius: BorderRadius.all(Radius.circular(10))),
        //   width: 180,
        //   height: 230,
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 15.0),
        //     child: Column(
        //       children: [
        //         Spacer(),
        //         Icon(Icons.phone_android_outlined,size: 35,),
        //         //SizedBox(height: 10,),
        //         Spacer(),
        //         Text('Aplicaciones Moviles', style: TextStyle(fontSize: 20,), textAlign: TextAlign.center,),
        //         //SizedBox(height: 10,),
        //         Spacer(),
        //         Text('Creamos apps móviles personalizadas y funcionales', textAlign: TextAlign.center,),
        //         //SizedBox(height: 10,)
        //         Spacer(),
        //       ],
        //     ),
        //   ),
        // ),
        const AnimatedContainerExample(title: 'Aplicaciones Moviles', info: 'Creamos apps móviles personalizadas y funcionales',),
        const SizedBox(
          width: 40,
        ),
        const AnimatedContainerExample(title: 'Desarrollo Web', info: 'Diseñamos sitios web robustos, atractivos y fáciles de usar',),
        /* Container(
          width: 180,
          height: 230,
          decoration:  BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF000000), // Negro
                  Color(0xFF181818), // Púrpura oscuro
                ],
                stops: [0.0, 1.0], // Puntos de parada del gradiente
              ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1), // Color de la sombra
                  offset: Offset(0, 4), // Desplazamiento X y Y
                  blurRadius: 15, // Radio de desenfoque
                  spreadRadius: 0, // Radio de expansión
                ),
              ],
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Spacer(),
                Icon(
                  Icons.web,
                  size: 35,
                ),
                Spacer(),
                SizedBox(
                  width: 100,
                  child: Text(
                    'Desarrollo Web',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Spacer(),
                
                Text(
                  'Diseñamos sitios web robustos, atractivos y fáciles de usar',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
              ],
            ),
          ),
        ), */
        const SizedBox(
          width: 40,
        ),
        AnimatedContainerExample(title: 'Aplicaciones de escritorio', info: 'Desarrollamos software de escritorio ágil y confiable')
        /* Container(
          width: 180,
          height: 230,
          decoration:  BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF000000), // Negro
                  Color(0xFF181818), // Púrpura oscuro
                ],
                stops: [0.0, 1.0], // Puntos de parada del gradiente
              ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1), // Color de la sombra
                  offset: Offset(0, 4), // Desplazamiento X y Y
                  blurRadius: 15, // Radio de desenfoque
                  spreadRadius: 0, // Radio de expansión
                ),
              ],
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Icon(
                  Icons.desktop_mac_outlined,
                  size: 35,
                ),
                Spacer(),
                Text(
                  'Aplicaciones de escritorio',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  'Desarrollamos software de escritorio ágil y confiable',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
              ],
            ),
          ),
        ), */
      ],
    );
  }
}

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key, required this.title, required this.info});

  final String title;
  final String info;

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
          boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1), // Color de la sombra
                  offset: Offset(0, 4), // Desplazamiento X y Y
                  blurRadius: 15, // Radio de desenfoque
                  spreadRadius: 0, // Radio de expansión
                ),
          ],

        ),
        width: _isHovered ? 185 : 180,
        height: _isHovered ? 235 : 230,
        child:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: Color.fromARGB(209, 241, 145, 214),
                ),
                child: Icon(
                  Icons.phone_android_outlined,
                  size: 35,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Text(
                widget.title,
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.left,
              ),
              Spacer(),
              Text(
                widget.info,
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
