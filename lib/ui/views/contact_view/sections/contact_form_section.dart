import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/custom_app_menu/utils/spacing.dart';
import '../../../shared/custom_app_menu/widgets/custom_flat_button.dart';
import '../../home_view/sections/utils/gradient_text.dart';
import '../utils/custom_inputs.dart';

class ContactFormSection extends StatelessWidget {
  const ContactFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const _TabletDesktopHeroView();
  }
}



class _TabletDesktopHeroView extends StatelessWidget {
  const _TabletDesktopHeroView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        // gradient:  LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   colors: [
        //     Colors.black,        // Color negro predominante
        //     Colors.black87,      // Negro con un toque de transparencia
        //     Colors.black87,      // Negro más claro
        //     Colors.black,   // Gris oscuro
        //   ],
        // ),
        color: Color(0xFF141414)
      ),
      child: Row(
        children: [
          // first container: hero title, description, action button
          FadeInUp(
            curve: Curves.linear,
            from: 200,
            duration: const Duration(milliseconds: 800),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 600,
              child: Stack(
                children: [
                  Positioned(
                    top: 140,
                    left: 80,
                    child: SizedBox(
                      height: 500.0,
                      width: MediaQuery.of(context).size.width * 0.60,
                      // column with hero title, description, action button
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            'Contactanos',
                            style: GoogleFonts.notoSerif(
                              color: Colors.white
                            ),
                           ),
                           Container(
                            width: 600,
                            //color: Colors.green,
                             child: GradientText(
                              '¿Cómo podemos ayudarte?',
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFFFC2EE),
                                  Color(0xFFFF0088),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              style: GoogleFonts.notoSerif(
                                fontSize: 70,
                                fontWeight: FontWeight.w300,
                              ),
                                                       ),
                           ),
                          const SizedBox(height: 20),
                           Container(
                            width: 600,
                            //color: Colors.blue,
                             child: GradientText(
                              'Nuestro equipo está aquí para ayudarte a acceder a soluciones de desarrollo de software y crecer según tus necesidades. Revisa los recursos a continuación y contáctanos directamente si tienes alguna pregunta.',
                              gradient: const LinearGradient(
                                colors:[
                                  Color(0xFFFFC2EE),
                                  Color(0xFFFF00B8),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                                ),
                              style: GoogleFonts.notoSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w400
                              ),
                                                       ),
                           ),
                          const SizedBox(height: 30),
                          CustomFlatButton(
                            text: 'Quiero una consulta gratuita',
                            onPressed: () {},
                            fontSize: 20,
                            backGroundColor: const Color(0xFF6D11B4),
                            withIcon: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //second container: hero robot image
          FadeInUp(
            duration: const Duration(milliseconds: 800),
            //delay: Durations.medium3,
            curve: Curves.bounceOut,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.red,
                    padding: EdgeInsets.only(right: 50, top: 80),
                    child: Container(
                      decoration:  BoxDecoration(
                        gradient:  const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF141414),        // Color negro predominante
                            Color(0xFF141414),
                            Color(0xFF141414),
                            Color(0xFF141414),      // Negro con un toque de transparencia
                            Color.fromARGB(255, 165, 0, 88),      // Negro más claro
                            Color(0xFFFF00B8),   // Gris oscuro
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      
                      padding: EdgeInsets.only(right: 110, left: 110, top: 5, bottom: 70),
                      child: ContactForm()
                    )
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
      width: 300,
  
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Center(
        child: Form(
                  autovalidateMode: AutovalidateMode.always,
        
                  child: Column(
                    children: [
        
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                                                    
                                style: TextStyle(color: Colors.white),
                                decoration: CustomInputs.loginInputDecoration(
                                hint: 'Nombre',
                                label: 'Nombre',
                                icon: Icons.email_outlined,
                              ),
                            ),
                          ),
                          horizontalSpacing(10.0),
                          Expanded(
                            child: TextFormField(
                                                    
                                style: TextStyle(color: Colors.white),
                                decoration: CustomInputs.loginInputDecoration(
                                hint: 'Apellidos',
                                label: 'Apellidos',
                                icon: Icons.email_outlined,
                              ),
                            ),
                          ),
        
                        ],
                      ),
                      //Email
                     
                      verticalSpacing(30),
          
                      //Password
                      TextFormField(
        
                          validator: ( value ){
                            if(value == null || value.isEmpty) return 'Debe ingresar texto';
                            if(value.length < 6) return 'La contrasena debe ser de 6 caracteres';
                            return null; //valido
                          } ,
                          obscureText: true,
                          
                          style: TextStyle(color: Colors.white),
                          decoration: CustomInputs.loginInputDecoration(
                          hint: 'Ingrese su correo',
                          label: 'Correo electrónico',
                          icon: Icons.email_outlined,
                        ),
                      ),

                      verticalSpacing(30),
                      TextFormField(
        
                          validator: ( value ){
                            if(value == null || value.isEmpty) return 'Debe ingresar texto';
                            if(value.length < 6) return 'La contrasena debe ser de 6 caracteres';
                            return null; //valido
                          } ,
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: CustomInputs.loginInputDecoration(
                          hint: 'Ingrese su email',
                          label: 'Email',
                          icon: Icons.email_outlined,
                        ),
                      ),

                      verticalSpacing(30),

                      TextFormField(
        
                          validator: ( value ){
                            if(value == null || value.isEmpty) return 'Debe ingresar texto';
                            if(value.length < 6) return 'La contrasena debe ser de 6 caracteres';
                            return null; //valido
                          } ,
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: CustomInputs.loginInputDecoration(
                          hint: 'Ingrese su email',
                          label: 'Email',
                          icon: Icons.email_outlined,
                        ),
                      ),                      
          
                    ],
                  ),
               ),
      ),
    );
  }
}