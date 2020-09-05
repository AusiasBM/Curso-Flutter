import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  // Las variables de un StatelessWidget tienen que ser final, ya que no puede cambiar su estado.
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      // Estamos añadiendo dos cosas una detras de otra en una misma linea,
      //sin necesidad de hacer más código
      lista
        ..add(tempWidget)
        ..add(
          Divider(color: Colors.black38),
        );
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var widgets = opciones.map((item) {
      return ListTile(
        title: Text(item + '!'),
      );
    }).toList();

    return widgets;
  }
}
