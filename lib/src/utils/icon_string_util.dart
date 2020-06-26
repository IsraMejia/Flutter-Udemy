/**Este archivo tiene el metodo getIcon que permitira conectar el 
 * JSON con el homepage pasando el IconData necesario para que se pinte en pantalla
 */

import 'package:flutter/material.dart'; //importm ->

final _icons = <String , IconData> {
  // Mapa de iconos del tipo String llave y valor Icon data propio de este archivo
  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
  'donut_large'   : Icons.donut_large,
  //Para escribir con mutiples cursores se mantiene alt u option mientras que se seleccionan
};

Icon getIcon (String nombreIcono){

  return Icon( _icons[nombreIcono] , color: Colors.blue);
  //recibe el IconData indicado del mapa _icons, 
  //el cual es el widget que construira el icono
}