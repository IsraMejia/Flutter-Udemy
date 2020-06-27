import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  
  @override
  _InputPageState createState() => _InputPageState();
}//IconsPage



class _InputPageState extends State<InputPage> {

  String _direccion ='' ;
  String _email ='';
  String _password='';

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
          _crearEmail(),
          Divider(),
          _ingresaPassword(),
          Divider(),

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

  Widget _crearEmail(){
    return TextField(

      keyboardType: TextInputType.emailAddress ,
      //Te pone el arroba en el teclado xD
      
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only( bottomLeft : Radius.circular(30)) ,
        ) ,
        counter: Text('letras ${_direccion.length } '),
        labelText: 'email@gmail.com',
        suffixIcon: Icon(Icons.email , size: 30.0 )
      ),

      onChanged: (textoEscrito){ //recibe un valor el cual se definio en esta linea
        setState( ()  {
          _password = textoEscrito;
          // print(_direccion);
        } );
      }

    );
  }//_crearEmail

  Widget _ingresaPassword(){
    return TextField(

      keyboardType: TextInputType.emailAddress ,
      //Te pone el arroba en el teclado xD
      
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only( bottomRight : Radius.circular(30)) ,
        ) ,
        counter: Text('letras ${_password.length } '),
        labelText: 'Password',
        suffixIcon: Icon(Icons.security , size: 30.0 , )
      ),

      onChanged: (textoEscrito){ //recibe un valor el cual se definio en esta linea
        setState( ()  {
          _email = textoEscrito;
          // print(_direccion);
        } );
      }

    );
  }


  Widget _revisarDatos(){
    return ListTile(
      title: Text('Revise sus datos:'),
      subtitle: Text('Su Direccion es: ${_direccion}\nSu email es: ${_email} '),
    );
  }


}// _IconsPage State