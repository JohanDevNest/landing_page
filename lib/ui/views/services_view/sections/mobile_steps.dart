import 'package:flutter/material.dart';

class MobileSteps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            color: Color.fromARGB(255, 22, 19, 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Text(
                    'PASOS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Divider(color: Colors.white24),
                SizedBox(height: 20),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStep(
                        number: '1',
                        title: 'Análisis',
                        description: 'Nos encargamos de cada aspecto del desarrollo de productos de software, comenzando desde el análisis',
                      ),
                      _buildStep(
                        number: '2',
                        title: 'UI/UX',
                        description: 'Se presta especial atención en nuestra empresa al aspecto UI/UX de cada producto que entregamos',
                      ),
                      _buildStep(
                        number: '3',
                        title: 'Desarrollo',
                        description: 'Nuestro equipo de desarrollo tiene años de experiencia creando aplicaciones de todo tipo imaginable',
                      ),
                      _buildStep(
                        number: '4',
                        title: 'Pruebas',
                        description: 'La compatibilidad con múltiples dispositivos se logra a través de un riguroso proceso de control de calidad',
                      ),
                    ],
                  ),
                ),

                
              ],
            ),
          );
  }

  Widget _buildStep({required String number, required String title, required String description}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Color.fromARGB(221, 42, 42, 42),
          child: Text(
            number,
            style: TextStyle(
              color: Colors.red,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: 200,
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }
}
