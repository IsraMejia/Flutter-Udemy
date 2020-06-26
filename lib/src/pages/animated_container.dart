import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState(); //Se crea el estado
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  //Manejador de estados

  double _width = 50.0; 
  double _height = 50.0;
  Color _color = Colors.teal[800];
  
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Conteiner Pro'),
        backgroundColor: Colors.teal[900] ,
      ),

      body: Center(
        child : AnimatedContainer(

          duration: Duration( milliseconds : 270 ) , 
          //Escencial para que el AnimatedContainer funcione

          curve: Curves.fastOutSlowIn, //Aceleraciones (+, -) dentro de la animacion
          //hay muchas en la documentacion para escoger

          width: _width,
          height: _height,
          
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
        )
      ),
      

      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarForma ,
        child: Icon(Icons.play_circle_outline ),
        backgroundColor: Colors.teal[600],
        ),
      

    );

  }//build

  void _cambiarForma(){

    final random = Random();


    setState(() {
      _width = random.nextInt(355).toDouble(); //max 300
      _height = random.nextInt(350).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255) , 
        random.nextInt(255),
        random.nextInt(255), 
        1) ;   

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());

    });

  }

}//_Animate extends State