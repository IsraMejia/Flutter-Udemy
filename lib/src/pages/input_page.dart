import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  
  @override
  _InputPageState createState() => _InputPageState();
}//IconsPage



class _InputPageState extends State<InputPage> {

  String _direccion ='' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title : Text('Entradas '),
        backgroundColor: Colors.blue[800] ,
      ),

      body: ListView(
        padding: EdgeInsets.all(20.0) ,
        children: <Widget>[
          _crearInput(),
          Divider(), //Ocupa el espacio que sobra
          _revisarDatos(),
          
        ],
      ),

    );

  }//build

  Widget _crearInput() {
    return TextField(
      autofocus: false,//Te mete al textfield de manera automatica
      textCapitalization: TextCapitalization.words ,
      //Te pone en mayusculas el inicio de cada palabra

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17.0),
        ) ,
        counter: Text('letras ${_direccion.length } '),
        hintText: 'Calle , #numero, CP.',
        labelText: 'Direccion',
        helperText: 'Ingrese su direccion',
        suffixIcon: Icon(Icons.map, color: Colors.blueGrey[400] ),
        //Para colocar el icono al final de la caja de texto
        icon: Icon(Icons.location_city , size: 30.0 )
      ),

      onChanged: (textoEscrito){ //recibe un valor el cual se definio en esta linea
        setState( ()  {
          _direccion = textoEscrito;
          // print(_direccion);
        } );
      }

    );
  } //_crear input




  Widget _revisarDatos(){
    return ListTile(
      title: Text('Revise sus datos:'),
      subtitle: Text(' ${_direccion} '),
    );
  }


}// _IconsPage State