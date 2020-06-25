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
          _cardTipo1(),
          SizedBox(height: 30.0), //Espacio de 30 entre las tarjetas
          _cardTipo2()
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
  }//_cardTipo1

  Widget _cardTipo2(){
    
    return Card(
      
      color: Colors.amberAccent,
      child: Column(
        children : <Widget>[
          // Image(
          //   image: NetworkImage('https://images4.alphacoders.com/900/thumb-1920-900361.jpg'),
          // ),

          FadeInImage(
            image: NetworkImage('https://images4.alphacoders.com/900/thumb-1920-900361.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover
          ),
          
          Container(
            padding: EdgeInsets.all(5.2),
            child: Text('BlackPanther super pesado')
          )
        ],
      ),
    );

  }//_cardTipo2


}//class CardPage

