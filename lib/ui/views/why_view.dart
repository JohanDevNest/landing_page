

import 'package:flutter/material.dart';

class WhyView extends StatelessWidget {
  const WhyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0x32ACD1F6),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Column(
          
          children: [
            SizedBox(height: 20,),
            FittedBox(
              fit: BoxFit.contain,
              child: Text('Por que elegirnos?', style: TextStyle(fontSize: 25),)),
            
            Container(
              width: 400,
              child: 
            Text('Lorem ipsum dolor ahsadsahd kasjhassjdahda jasjashahs dhsdhs kshdhs aaaa skshdsik ahasjs',textAlign: TextAlign.center),),
            SizedBox(height: 20,),
            Row(
              children: [
                Image.network(
                  "assets/why_view.png",
                  width: 250, 
                  height: 250,
                  fit: BoxFit.cover,

                ),
                SizedBox(width: 50,),
                Column(
                  children: [
                    Text('Facil de contactarnos'),
                    Text('Opinion de expertos gratuita'),
                    Text('Obten buenos resultados'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}