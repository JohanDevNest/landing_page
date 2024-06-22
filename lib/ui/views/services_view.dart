import 'package:flutter/material.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0x2F2933),
      child: FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(height: 25,),
            Text(
              'Nuestros Servicios',
              style: TextStyle(
                fontSize: 30,
              ),
              ),
            SizedBox(height: 5,),
            Container(width: 600,child: Text('Ofrecemos soluciones digitales innovadoras, desde aplicaciones móviles hasta desarrollo web y software de escritorio, adaptadas a tus necesidades.', style: TextStyle(fontSize: 15), textAlign: TextAlign.center,)),
            SizedBox(height: 30,),
            
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 30),
              child: _ServicesCard(),
            )
          ],
        ),
      ),
    );
  }
}

class _ServicesCard extends StatelessWidget {
  const _ServicesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(color: Color(0x33FF6F61), borderRadius: BorderRadius.all(Radius.circular(10))),
          width: 180,
          height: 230,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Spacer(),
                Icon(Icons.phone_android_outlined,size: 35,),
                //SizedBox(height: 10,),
                Spacer(),
                Text('Aplicaciones Moviles', style: TextStyle(fontSize: 20,), textAlign: TextAlign.center,),
                //SizedBox(height: 10,),
                Spacer(),
                Text('Creamos apps móviles personalizadas y funcionales', textAlign: TextAlign.center,),
                //SizedBox(height: 10,)
                Spacer(),                
              ],
            ),
          ),
        ),
        SizedBox(width: 40,),
        Container(
          width: 180,
          height: 230,
          decoration: BoxDecoration(color: Color(0x236D11B4), borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Spacer(),
                Icon(Icons.web, size: 35,),
                //SizedBox(height: 10,),
                Spacer(),
                Container( width: 100 ,child:Text('Desarrollo Web', style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)),
                Spacer(),
                //SizedBox(height: 10,),
                Text('Diseñamos sitios web robustos, atractivos y fáciles de usar', textAlign: TextAlign.center,),
                Spacer(),
              ],
            ),
          ),
        ),
        SizedBox(width: 40,),
        Container(
          width: 180,
          height: 230,
          decoration: BoxDecoration(color: Color(0x23FFC107), borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Icon(Icons.desktop_mac_outlined, size: 35,),
                Spacer(),
                Text('Aplicaciones de escritorio', style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
                Spacer(),
                Text('Desarrollamos software de escritorio ágil y confiable', textAlign: TextAlign.center,),
                Spacer(),         
              ],
            ),
          ),
        ),
      ],
    );
  }
}