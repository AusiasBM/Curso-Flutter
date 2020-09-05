import 'package:componentes/scr/pages/home_temp.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Componentes App',
        debugShowCheckedModeBanner: false,
        // Para poder iniciar la aplicación desde otra página, solo tenemos que llamar a la clase de esa página
        home: HomePageTemp());
  }
}
