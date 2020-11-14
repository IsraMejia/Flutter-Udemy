import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),

      body: Center(
        child: RaisedButton(//Boton pelon sin hacer nada xd
          
          onPressed: () => _mostrarAlert(context) ,

          child: Text('Alerta'),
          color: Colors.lightBlue[100] ,
          textColor: Colors.black ,
          shape: StadiumBorder(),//Bordes redondeados al instante

        )
      ),



      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        }, //El context nos manda a la pagina anterior ;D
      ),
   
    );
  }//build()

  void _mostrarAlert( BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true, //Cerrar alerta dando click afuera :0
      builder: (context) {
       
        return AlertDialog(

          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ) ,
          // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40) ),
          // El broder radius no es parametro del AlertDialog 
          
          backgroundColor: Colors.lightBlue[50],
          title: Text('Salu2xd'),
          
          content: Column( //Por defecto el column usara toda la pantalla
            mainAxisSize: MainAxisSize.min,
            //Ahora el tamaño del Column sera el minimo para embolver contenido
            children: <Widget>[
              Text('Contenido xdddddddddasdasda Contenido xdddddddddContenido xddddddddd Contenido xddddddddd'),
              FlutterLogo( size : 100.0 ),

              
            ],
          ),

          actions: <Widget>[
           
            FlatButton(
              onPressed: () => Navigator.of(context).pop(), 
              //Recibe el context y con el metodo pop saledel alert
              child: Text('Cancelar'),
            ),
            
            FlatButton(
              onPressed: (){
                 Navigator.of(context).pop(); 
              },
              child: Text('Aceptar'),
            ),
          ],

        );
      }
    );
  }
}//AlertPage