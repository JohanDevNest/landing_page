

import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0x32F48D8D),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Row(
          children: [
            Image.network(
              "assets/about_view.png",
              width: 250, 
              height: 250,
              fit: BoxFit.cover,
        
            ),
            SizedBox(width: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sobre nosotros'),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  child: Text('Opinion de expertos gratuita sjsajsj sajdkasdj sksjdsjad skdjajdaj aksdasjdaj jlkajdlajsd kdfjf sjd alskdjd lasjjd aslsjdksjas')),
              ],
            )
          ],
        ),
      ),
    );
  }
}