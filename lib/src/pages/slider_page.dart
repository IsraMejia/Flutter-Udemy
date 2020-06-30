import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();

}//class SiliderPage

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 0.0;
  String _tituloSlider= 'Prioridad';
  bool _bloquearTamano = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Slider'),
        backgroundColor: Colors.blueGrey[800] ,
      ),

      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[

            Text('Desliza para ver a BlackPanther' ,
            style: TextStyle( fontSize: 20.0, color: Colors.deepPurple[900] )  
            ),
            
            Container(
              padding: EdgeInsets.all(10.0),
              child: _crearSlider(),
            ),
            

            _crearCheckBox(),

            _crearSwich(),
            
            Expanded(child: _crearImagen()),//Hace que use el resto de la pantalla
            
          ],
        ),
      ),

    );
  }//build

  _crearSlider(){
    return Slider(
      
      activeColor: Colors.blueGrey[900] ,
      label: _tituloSlider,
      divisions: 3,

      value: _valorSlider,
      min:0.0, max: 30.0,

      onChanged: (_bloquearTamano) ? null   :  ( valor) {
      //Si el checkbox esta Activado no se habilita, caso contrario
      //Se le asigna el valor que recibe en el on changed y realiza la funcion anonima
        setState(() {
        _valorSlider = valor;
        _tituloSlider = _prioridad(valor);
        });//Al establecer el estado ahora si se dibujaen tiempo de ejecucion
      },
      
    );
  }

  String _prioridad (double valor) {
    String valorDePrioridad='';
    switch (valor.toInt() ) {
          case 0:
            valorDePrioridad = 'Invisible';
          break;

          case 10:
            valorDePrioridad = 'Visible';
          break;

          case 20:
            valorDePrioridad = 'Mediano';
          break;

          case 30:
            valorDePrioridad = 'Grande';
          break;

          default:
            valorDePrioridad = 'Prioridad';
          break;
        }
    return valorDePrioridad;
  }// _prioridad

  Widget _crearImagen(){
    return Image(
      image:NetworkImage('https://i.pinimg.com/originals/ff/51/7d/ff517d8782fa3a23c1c73c6eda961971.png'),
      width: _valorSlider*10.5 ,
      fit: BoxFit.contain,//Mantiene la imagen dentro del Image sin recortarla
      );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //   value: _bloquearTamano , 
    //   onChanged: (valorBool){
    //     setState(() {
    //       _bloquearTamano = valorBool;
    //     });
    //   },
    //   );//Checkbox

    return CheckboxListTile(
      title: Text('Bloquear tamaño'),
      value: _bloquearTamano , 
      onChanged: (valorBool){
        setState(() {
          _bloquearTamano = valorBool;
        });
      },
    );//CheckboxListTile

  } //_crearCheckBox

  Widget _crearSwich(){
    return SwitchListTile(
      title: Text('Bloquear tamaño con un SwitchListTile'),
      value: _bloquearTamano , 
      onChanged: (valorBool){
        setState(() {
          _bloquearTamano = valorBool;
        });
      },
    );
    
  }
  


}//_SliderPS State