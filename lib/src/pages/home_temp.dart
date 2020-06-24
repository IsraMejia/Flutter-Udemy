import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {
   
   final opciones =  ['Uno', 'Dos' , 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Pros"),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorto()
      ),
    );
  }//build

  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget) //Se puso '..' y se quito el ';' para hacer el codigo en cascada
      //lista.add( Divider( ) );
          ..add( Divider(color: Colors.blueAccent) ); //propiedad en cascada, se agrego el divider
    }

    return lista;
  } // _crearItems

  List<Widget> _crearItemsCorto(){
    return opciones.map( (item) /*Funcion anonima con argumento item*/{
      //item es la cadena que se va tomando de opciones al mapearla
      return Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.child_care),
            title: Text(item + " +corto"),
            subtitle: Text("subtitulo xd"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){},

          ),
          Divider()
        ],
      ); 

    }).toList();// Lo guarda todo en una lista 

  
  }


}//class HomePageTemp