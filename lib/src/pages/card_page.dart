import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),

      body: ListView(

        padding: EdgeInsets.all(15.0) , //Separa el contenido del List en todos sus bordes con sus limites lateres 20

        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0), //Espacio de 30 entre las tarjetas
          _cardTipo2(),
          SizedBox(height: 30.0), //Espacio de 30 entre las tarjetas
          _cardTipo1(),
          SizedBox(height: 30.0), //Espacio de 30 entre las tarjetas
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0), //Espacio de 30 entre las tarjetas
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0), //Espacio de 30 entre las tarjetas
          _cardTipo2()
        ],
      ),
    );
  }//build CardPage

  Widget _cardTipo1(){
    return Card(//Widget card de la lib material
    elevation: 5.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)   ),
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
    
    final card =  Container(
      // clipBehavior: Clip.antiAlias,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30) ) ),
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
            fit: BoxFit.cover //Recortar centrado
          ),
          
          Container(
            padding: EdgeInsets.all(5.2),
            child: Text('BlackPanther archivo super pesado')
          )
        ],
      ),
    );//final card

    return Container(
      
      decoration: BoxDecoration( 
        color: Colors.blue[100],
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40) ),
        // color: Colors.red
        boxShadow: <BoxShadow>[
          BoxShadow(
            color : Colors.deepPurple[100],
            blurRadius: 5.0, //Lo pone borroso xD
            spreadRadius: 2.0, //alarga el difuminado xD
            offset: Offset(10, 10) //Mueve el difuminado
          )
        ]
      ),
      child: ClipRRect(
        child: card, 
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40) ),

        
      ),//Recorta todo lo quede fuera del contenedor

    );

  }//_cardTipo2


}//class CardPage

