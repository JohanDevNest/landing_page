import 'package:flutter/material.dart';
import 'package:landing_page/ui/shared/custom_flat_button.dart';

class HeroView extends StatelessWidget {
  const HeroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xFF2F2933),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.65,
            height: 600,
            //color: Colors.white,
            child: Stack(
              children: [
                Positioned(
                  top: 120,
                  left: 90,
                  child: Container(
                    height: 500.0,
                    width: MediaQuery.of(context).size.width*0.60,
                    //color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transformando ideas en soluciones digitales',
                          style: TextStyle(color: Colors.white, fontSize: 70, ),
                          ),
                        SizedBox(height: 20,),
                        Text(
                          'Desde aplicaciones móviles intuitivas hasta plataformas web  y soluciones de escritorio eficientes, DevNest Innova transforma tus ideas en realidad.',
                          style: TextStyle(color: Colors.white, fontSize: 25,),
                          textAlign: TextAlign.start,
                          ),
                        SizedBox(height: 30,),
                        // CustomFlatButton(
                        //   text: 'Contactanos', 
                        //   onPressed: (){},
                        //   backGroundColor: Colors.pink,
                        //   fontSize: 25,
                        //   ),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.pink,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )
                          ),
                          onPressed: (){}, 
                          child: Container(
                            width: 200.0,
                            height: 60.0,
                            child: Center(
                              child: Text('Contactanos', style: TextStyle(fontSize: 25, color: Colors.white),),
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                ),
              ]
            ),
          ),
          Container(
            height: 400,
            //color: Colors.green,
            width: MediaQuery.of(context).size.width*0.35,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network("assets/hero_view_robot.png")
              ],
            ),
          )
        ],
        
      ),
    );
  }
}