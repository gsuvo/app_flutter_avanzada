import 'package:flutter/material.dart';
import 'package:app_flutter_avanzada/primera.dart';
import 'segunda.dart';
import 'tercera.dart';
class practica2 extends StatefulWidget {
  @override
  _practica2State createState() => _practica2State();
}

class _practica2State extends State<practica2> {
  int _indice = 0;

  final List<Widget> pagina = [
    primera(),
    segunda(),
    tercera(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _indice = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pagina[_indice],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indice,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Acerca de',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image),
              label: 'Galería',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow),
              label: 'Extra',
            ),
          ],
        ),
      ),
    );
  }
}
