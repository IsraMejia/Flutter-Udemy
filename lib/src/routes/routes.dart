import 'package:flutter/material.dart';
import 'package:componentes_app/src/pages/alert_page.dart';
import 'package:componentes_app/src/pages/avatar_page.dart';
import 'package:componentes_app/src/pages/home_page.dart';
import 'package:componentes_app/src/pages/card_page.dart';
import 'package:componentes_app/src/pages/animated_container.dart';
import 'package:componentes_app/src/pages/input_page.dart';
import 'package:componentes_app/src/pages/slider_page.dart';
import 'package:componentes_app/src/pages/listview_page.dart';


Map <String, WidgetBuilder> getApplicationRoutes(){

  return  <String, WidgetBuilder> { //Se crea el mapa de rutas de las paginas
          '/'       : (BuildContext context) => HomePage(), // el slash '/' sera la llave del home dentro del mapa
          'alert'   : (BuildContext context) => AlertPage(),
          'avatar'  : (BuildContext context) => AvatarPage(), 
          'card'    : (BuildContext context) => CardPage(),
          'AnimetedContainer'   : (BuildContext context) => AnimatedContainerPage(),
          'Inputs'  : (BuildContext context) => InputPage(),
          'Slider'  : (BuildContext context) => SliderPage() ,
          "Listas"  : (BuildContext context) => ListaPage(),
  };//Las llaves tienen que ser las que tenemos como valor en el JSON

}//Se creo el metodo que retornara el mapa de rutas
