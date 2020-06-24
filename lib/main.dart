import 'package:flutter/material.dart';

import 'package:componentes_app/src/pages/alert_page.dart';
import 'package:componentes_app/src/pages/avatar_page.dart';
import 'package:componentes_app/src/pages/home_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Quitamos el banner 
      //banner para escribir rapido^
      title: 'Componentes App',
      //home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder> { //Se crea el mapa de rutas de las paginas
        '/'       : (BuildContext context) => HomePage(), // el slash '/' sera la llave del home dentro del mapa
        'alert'   : (BuildContext context) => AlertPage(),
        'avatar'  : (BuildContext context) => AvatarPage(),
      } ,
    );
  }
}