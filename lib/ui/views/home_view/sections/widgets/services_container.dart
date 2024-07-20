import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/spacing.dart';

class ServicesContainer extends StatefulWidget {
  const ServicesContainer({
    super.key,
    required this.title,
    required this.info,
    required this.svgPath,
  });

  final String title;
  final String info;
  final String svgPath;

  @override
  _ServicesContainerState createState() => _ServicesContainerState();
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
        decoration: buildBoxDecoration(_isHovered),
        width: _isHovered ? 385 : 380,
        height: _isHovered ? 445 : 440,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              _buildSvgIcon(),
              verticalSpacing(5.0),
              const Spacer(),
              _buildTitle(),
              const Spacer(),
              _buildInfo(),
              const Spacer(),
              verticalSpacing(5.0),
              _buildReadMore(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSvgIcon() {
    return SizedBox(
      width: 88,
      height: 88,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: SvgPicture.network(
          widget.svgPath,
          color: Color(0xFFFF00B8),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return SizedBox(
      width: 290,
      child: Text(
        widget.title,
        style: GoogleFonts.notoSerif(
          fontSize: 40,
          color: Colors.white,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _buildInfo() {
    return Text(
      widget.info,
      textAlign: TextAlign.start,
      style: GoogleFonts.notoSerif(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }

  Widget _buildReadMore() {
    return Text(
      'Read more',
      style: GoogleFonts.notoSerif(
        color: const Color(0xFF4F53C1),
        fontSize: 24,
      ),
    );
  }

  BoxDecoration buildBoxDecoration(bool isHovered) {
    return BoxDecoration(
      color: isHovered
          ? const Color.fromARGB(133, 184, 56, 45)
          : const Color(0xFF000000),
      borderRadius: BorderRadius.all(Radius.circular(isHovered ? 15 : 10)),
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF000000), // Negro
          Color(0xFF181818), // Púrpura oscuro
        ],
        stops: [0.0, 1.0], // Puntos de parada del gradiente
      ),
      border: Border.all(color: const Color(0xFF404040)),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(1), // Color de la sombra
          offset: const Offset(0, 4), // Desplazamiento X y Y
          blurRadius: 15, // Radio de desenfoque
          spreadRadius: 0, // Radio de expansión
        ),
      ],
    );
  }
}
