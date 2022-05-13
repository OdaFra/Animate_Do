import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavegacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: const Text('Notifications Pages'),
      ),
      body: Center(
        child: Text('Hola Mundo'),
      ),
      floatingActionButton: BotonFlotante(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.indigoAccent,
      items: [
        const BottomNavigationBarItem(
          label: 'Bones',
          icon: FaIcon(FontAwesomeIcons.bone),
          
        ),
          BottomNavigationBarItem(
          label: 'Notifications',
          icon: Stack(
            children:  [
           const   FaIcon(FontAwesomeIcons.bell),
              Positioned(
                top: 0.0,
                right: 0.0,
                // child: Icon(Icons.brightness_1, color: Colors.blueAccent, size: 8,)
                child: Container(
                  alignment: Alignment.center,
                  child: const Text('99', style: TextStyle(fontSize: 8, color: Colors.white),),
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle
                  ),
                ),
                )
            ],
          ),
          
        ),
          const BottomNavigationBarItem(
          label: 'My Dog',
          icon: FaIcon(FontAwesomeIcons.dog),
          
        ),
      ],
    );
  }
}

class BotonFlotante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.indigo,
      onPressed: () {},
      child: FaIcon(FontAwesomeIcons.play),
    );
  }
}
