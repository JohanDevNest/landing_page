import 'package:flutter/material.dart';
import 'custom_flat_button.dart';
import 'custom_menu_item.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ( _, constraints){
        return (constraints.maxWidth > 1100)
                ? const _TabletDesktopMenu()
                : const MobileMenu();
      }
      );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(color: Color(0xFF2F2933),border: Border(bottom: BorderSide(color: Color(0xFFFF6F61)))),
      width: double.infinity,
      //color: Color(0xFF2F2933),//Colors.green,//Color(0xFF2F2933),
      child: Row(
        children: [
          const SizedBox(width: 80,),
          Image.network(
            "assets/logo.png", 
            width: 200,
            height: 70,
            fit: BoxFit.cover,

          ),
          const Spacer(),
          CustomFlatButton(
            text: 'Inicio', 
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () {}, 
            fontSize: 18,
            ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Acerca de nosotros', 
            // onPressed: () => Navigator.pushNamed(context, '/provider'), 
            onPressed: () {},
            fontSize: 18,
  
            ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Servicios', 
            // onPressed: () => Navigator.pushNamed(context, '/abc123'),
            onPressed: () {},
            fontSize: 18,
            ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contactanos', 
            // onPressed: () => Navigator.pushNamed(context, '/stateful/100'),
            onPressed: () {}, 
            backGroundColor: const Color(0xFF6D11B4),
            fontSize: 18,
            ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'En', 
            // onPressed: () => Navigator.pushNamed(context, '/stateful/100'),
            onPressed: () {}, 
            ),
          const SizedBox(width: 50,)
        ],
      ),
    );
  }
}




class MobileMenu extends StatefulWidget {
  const MobileMenu({super.key});

  @override
  State<MobileMenu> createState() => _MobileMenuState();
}

class _MobileMenuState extends State<MobileMenu> with SingleTickerProviderStateMixin{

  bool isOpen = false;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: (){
                if(isOpen){
                  controller.reverse();
                }else{
                  controller.forward();
                }
                setState(() {
                  isOpen = !isOpen;
                });
              },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: 150,
              height: isOpen ? 320 : 70,
              color: isOpen? Colors.white : Colors.transparent,
              child: Column(
                children: [
                  _MenuTitle(isOpen: isOpen, controller: controller),
                  if(isOpen)
                   ...[
                    CustomMenuItem(text: 'Home', onPressed: (){}),
                    CustomMenuItem(text: 'About', onPressed: (){}),
                    CustomMenuItem(text: 'Pricing', onPressed: (){}),
                    CustomMenuItem(text: 'Contact', onPressed: (){}),
                    CustomMenuItem(text: 'Location', onPressed: (){}),
                   ]
                  
                ],
              ),
            ),
          ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    super.key,
    required this.isOpen,
    required this.controller,
  });

  final bool isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        children: [
          const SizedBox(width: 20,),
          Text('DevNestInnova',style: TextStyle(color: isOpen ? Colors.black : Colors.white, fontSize: 20),),
          const Spacer(),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: isOpen ? 45 : 0,
          ),
          
          //Text('Menu', style: GoogleFonts.roboto( color: Colors.white, fontSize: 18)),
          const Spacer(),
          //Icon(Icons.menu, color: Colors.white,)
          AnimatedIcon(
            icon: AnimatedIcons.menu_close, 
            progress: controller,
            color: isOpen ?Colors.black : Colors.white,
          )
        ],
      ),
    );
  }
}