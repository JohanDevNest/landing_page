import 'package:flutter/material.dart';

class BannerServices extends StatelessWidget {
  const BannerServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black,        // Color negro predominante
            Colors.black87,      // Negro con un toque de transparencia
            Colors.black87,      // Negro más claro
            Colors.black,   // Gris oscuro
          ],
          stops: [0.0, 0.5, 0.5, 1.0],
        ),
      ),
      child: Center(
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "¡Empezamos a trbajar?",
                style: TextStyle(
                  color: Color(0xFFDCD0C0),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Text(
                    'Estimar proyecto',
                    style: TextStyle(
                      color: Color(0xFFDCD0C0),
                      fontSize: 78,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Positioned(
                    bottom: -5,
                    child: Container(
                      height: 5,
                      width: 200,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}