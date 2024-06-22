

import 'package:flutter/material.dart';

class WhyView extends StatelessWidget {
  const WhyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Column(
          
          children: [
            Text('Por que elegirnos?'),
            
            Text('Lorem ipsum dolor ahsadsahd kasjhassjdahda jasjashahs dhsdhs kshdhs aaaa skshdsik ahasjs'),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Imagen'),
                SizedBox(width: 50,),
                Column(
                  children: [
                    Text('texto 1'),
                    Text('texto 2'),
                    Text('texto 3'),
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