import 'package:flutter/material.dart';

import '../../../shared/custom_app_menu/widgets/custom_flat_button.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      color: Color(0xFF2F2933),
      child: Column(
        children: [
          SizedBox(height: 50,),
          Text('Contactanos para una cotización con nuestros expertos totalmente gratuita'),
          SizedBox(height: 40,),
          Text('Recibe una estimación personalizada sin compromiso. Nuestro equipo está listo para ayudarte. ¡Contáctanos hoy!'),
          SizedBox(height: 40,),
          Text('Llamanos al +57 313 241 92 78 '),
          SizedBox(height: 50,),
          CustomFlatButton(text: 'Llamanos', onPressed: (){})
       ],
      ),
    );
  }
}