//Este archivo se encargara del manerjo del archivo json menu_opts.json
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
//Se importa la clase rootBundle del archivo services.dart para poder leer archivos json

class _MenuProvider{
/*Se hace privada la clase para hacer uso de una instancia en tiempo de ejecucion, la cual
Sera asignada a menuProvider*/

  List<dynamic> opciones = []; //Se define la lista dinamica opciones que por defecto esta vacia

  _MenuProvider(){ //Constructor de MenuProvider
    
    
  }

  Future <List <dynamic> > cargarData() async{
    final resp = await rootBundle.loadString("data/menu_opts.json");
    
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];

    return opciones;
  }
      
  


}//_MenuProvider


final menuProvider = new _MenuProvider();
