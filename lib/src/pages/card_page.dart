import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salu2Internautas'),
      ),

      body: ListView(

        padding: EdgeInsets.all(15.0) , //Separa el contenido del List en todos sus bordes con sus limites lateres 20

        children: <Widget>[
          _cardTipo1()
        ],
      ),
    );
  }//build CardPage

  Widget _cardTipo1(){
    return Card(//Widget card de la lib material
      child: Column(
        children: <Widget>[

          ListTile(
            leading : Icon(Icons.all_inclusive , color: Colors.blue[800]), //Azul oscuro xd
            title: Text('Rex es un perro beibe'),
            subtitle: Text("Todo esto es para ver que se le puede agregar mucho texto sin problemas en el subtitle "),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end, //Alinia todo al final del row

            children: <Widget>[

              FlatButton(
                onPressed: (){

                },

                child: Text("Cancelar"),
              ),

              FlatButton(
                onPressed: (){

                },

                child: Text("Aceptar"),
              ),

            ],
          )

        ],
        ),
    );
  }



}//class CardPage

