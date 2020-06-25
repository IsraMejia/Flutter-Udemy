import 'package:componentes_app/src/pages/alert_page.dart';
import 'package:componentes_app/src/providers/menu_provider.dart';
import 'package:componentes_app/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    //menuProvider.cargarData()
    // .then((opciones){
    //   print('_lista'); 
    //   print(opciones);
    // }); // para visualizar el json en el debug console

    return FutureBuilder(
      future: menuProvider.cargarData(),//Definimos el future builder del ListView
      initialData: [] ,//informacion que tendra por defecto en lo que el future se obtiene, se  puso una lista vacia
      builder: ( BuildContext context, AsyncSnapshot<List<dynamic>> snapshot ) {
      /*el builder recibe una funcion que como parametros tiene un BuildContext llamado context y 
      una lista dinamica AsyncSnapshot llamada snapshot
      
      Este builder se va a disparar ya sea cuando tengamos los datos, cuando se obtuvo la informacion, o bien cuando
      se tuvo un error  */
     
      return ListView(
      children: _listaItems(snapshot.data , context),
      );


      },
    );
  }

  List<Widget> _listaItems( List<dynamic> data , BuildContext context) { //El metodo retorna una lista de widgets
    
    final List<Widget> opciones = [];

    

    data.forEach(   (opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon( opt['icon'] )  , 
        //manda la llave del JSON para el metodo get icon de icon_string_util.dart
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.indigo),
        onTap: (){
          
              // final route = MaterialPageRoute(
              //     builder: (context) => AlertPage() 
                  
              //   );
              // Navigator.push(context, route);
          /***El context el el build constext de la pagania actual, este esta en 
           * entre muchas cosas mas se encuentra en la variable
           * context por defecto y esta se recibe como argumento _listaItems
           */

          Navigator.pushNamed(context, opt['ruta'] );
          /***opt nos da la ruta del archivo json, 
           * la cual es la llave en el archivo main del map
           * routs el cual tiene como valor las clases de las pantallas
           */



        },//onTap

      );

      opciones..add((widgetTemp))
              ..add(Divider());

    }); //forEach

    return opciones;

  }

}//HomePage