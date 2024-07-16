import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 150.0),
          child: Column(
            children: [
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
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text('Impulsando tu negocio con tecnología de vanguardia',
                          style: TextStyle(fontSize: 18, color: Colors.white),
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
                          style: TextStyle(fontSize: 12, color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 50.0,),
              Row(
                children: [
                
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text('Impulsando tu negocio con tecnología de vanguardia',
                          style: TextStyle(fontSize: 18, color: Colors.white),
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
                          style: TextStyle(fontSize: 12, color: Colors.white),
                          textAlign: TextAlign.start,
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
                    'assets/about_first.png',
                    width: 280,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
