import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de taps:',
              style: _estiloTexto,
            ),
            Text('$_conteo', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // Creamos los botones *******************************************************

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 10.0,
        ),
        _buttonRestart(),
        Expanded(
          child: SizedBox(
            width: 0,
          ),
        ),
        _buttonSumar(),
        SizedBox(
          width: 10.0,
        ),
        _buttonRestar(),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }

  // Botón de sumar ************************************************************

  Widget _buttonSumar() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        setState(() => _conteo++);
      },
    );
  }

  // Botón de restar ***********************************************************

  Widget _buttonRestar() {
    return FloatingActionButton(
      child: Icon(Icons.remove),
      onPressed: () {
        setState(() => _conteo--);
      },
    );
  }

  // Botón de Resetear *********************************************************

  Widget _buttonRestart() {
    return FloatingActionButton(
      child: Icon(Icons.exposure_zero),
      onPressed: () {
        setState(() => _conteo = 0);
      },
    );
  }
}
