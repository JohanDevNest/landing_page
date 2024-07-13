import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey.shade200, //Color(0x2F2933),
      child: FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            FadeIn(
              duration: const Duration(seconds: 1),
              delay: Durations.extralong3,
              //from:200,
              child: const Text(
                'Nuestros Servicios',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            FadeIn(
              duration: const Duration(seconds: 1),
              delay: Durations.extralong4,
              //from: 200,
              child: const SizedBox(
                width: 600,
                child: Text(
                  'Ofrecemos soluciones digitales innovadoras, desde aplicaciones móviles hasta desarrollo web y software de escritorio, adaptadas a tus necesidades.',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 80,
                vertical: 30,
              ),
              child: const _ServicesCard(),
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
        // Container(
        //   decoration: BoxDecoration(color: Color(0x33FF6F61), borderRadius: BorderRadius.all(Radius.circular(10))),
        //   width: 180,
        //   height: 230,
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 15.0),
        //     child: Column(
        //       children: [
        //         Spacer(),
        //         Icon(Icons.phone_android_outlined,size: 35,),
        //         //SizedBox(height: 10,),
        //         Spacer(),
        //         Text('Aplicaciones Moviles', style: TextStyle(fontSize: 20,), textAlign: TextAlign.center,),
        //         //SizedBox(height: 10,),
        //         Spacer(),
        //         Text('Creamos apps móviles personalizadas y funcionales', textAlign: TextAlign.center,),
        //         //SizedBox(height: 10,)
        //         Spacer(),
        //       ],
        //     ),
        //   ),
        // ),
        const AnimatedContainerExample(),
        const SizedBox(
          width: 40,
        ),
        Container(
          width: 180,
          height: 230,
          decoration: const BoxDecoration(
            color: Color(0x236D11B4),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Spacer(),
                Icon(
                  Icons.web,
                  size: 35,
                ),
                //SizedBox(height: 10,),
                Spacer(),
                SizedBox(
                  width: 100,
                  child: Text(
                    'Desarrollo Web',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Spacer(),
                //SizedBox(height: 10,),
                Text(
                  'Diseñamos sitios web robustos, atractivos y fáciles de usar',
                  textAlign: TextAlign.center,
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        Container(
          width: 180,
          height: 230,
          decoration: const BoxDecoration(
              color: Color(0x23FFC107),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Icon(
                  Icons.desktop_mac_outlined,
                  size: 35,
                ),
                Spacer(),
                Text(
                  'Aplicaciones de escritorio',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  'Desarrollamos software de escritorio ágil y confiable',
                  textAlign: TextAlign.center,
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool _isHovered = false;

  void _onEnter(PointerEvent details) {
    setState(() {
      _isHovered = true;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _isHovered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: _onEnter,
      onExit: _onExit,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: _isHovered ? const Color(0x85FF6F61) : const Color(0x33FF6F61),
          borderRadius: BorderRadius.all(Radius.circular(_isHovered ? 15 : 10)),
        ),
        width: _isHovered ? 185 : 180,
        height: _isHovered ? 235 : 230,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Spacer(),
              Icon(
                Icons.phone_android_outlined,
                size: 35,
              ),
              Spacer(),
              Text(
                'Aplicaciones Moviles',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Text(
                'Creamos apps móviles personalizadas y funcionales',
                textAlign: TextAlign.center,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
