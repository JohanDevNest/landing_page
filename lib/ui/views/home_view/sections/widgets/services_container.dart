
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesContainer extends StatefulWidget {
  const ServicesContainer({super.key, required this.title, required this.info, required this.icon});

  final String title;
  final String info;
  final IconData icon;

  @override
  _ServicesContainerState createState() =>
      _ServicesContainerState();
}

class _ServicesContainerState extends State<ServicesContainer> {
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
        //width: _isHovered ? 205 : 200,
        //height: _isHovered ? 235 : 230,
        width: _isHovered ? 285 : 280,
        height: _isHovered ? 315 :310,
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
                width: 190,
                child: Text(
                  widget.title,
                  style: GoogleFonts.notoSerif(
                    fontSize: 30, 
                    color: Colors.white
                  ),
                  
                  textAlign: TextAlign.left,
                ),
              ),
              Spacer(),
              Text(
                widget.info,
                textAlign: TextAlign.start,
                style: GoogleFonts.notoSerif(
                    color: Colors.white,
                    fontSize: 20
                  
                  ),
              ),
              Spacer(),
              SizedBox(height: 5.0,),
              Text(
                'Read more',
                style: GoogleFonts.notoSerif(
                  color: Color(0xFF4F53C1),
                  fontSize: 20
                )
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
