import 'package:flutter/material.dart';

import 'package:componentes_app/src/routes/routes.dart';
// import 'package:componentes_app/src/pages/alert_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Quitamos el banner 
      //banner para escribir rapido^
      title: 'Componentes App',
      //home: HomePage(),
      initialRoute: '/', // Se defina la ruta inicial de nuestro mapa de rutas
      routes: getApplicationRoutes(),

      // onGenerateRoute: (RouteSettings settings) {

      //   print("Ruta llamada: ${settings.name}");

      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => AlertPage(),
      //   );

      // } ,

    );
  }
}