import 'package:flutter/material.dart';

class primera extends StatefulWidget {
  @override
  _primeraState createState() => _primeraState();
}

class _primeraState extends State<primera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Alumno'),
              subtitle: Text('José Gustavo Aguilar Correa'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.location_city),
              title: Text('Instituto tecnológico de Tepic'),
              subtitle: Text('Dirección: Av. Tecnológico #2595, Col. Lagos del Country, Tepic, Nayarit. Teléfono: (311) 211 94 00.'),
            ),
          ),
        ],
      ),
    );
  }
}
