import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
} //IconsPage

class _InputPageState extends State<InputPage> {
  String _direccion = '';
  String _email = '';
  String _password = '';
  String _fecha = '';
  String _nivelEdSeleccionado = 'Estudiante';
  //tiene que ser de la lista _educacion

  List<String> _educacion = ['Estudiante', 'Profesor', 'Egresado'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
        backgroundColor: Colors.blue[800],
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _crearInput(),
          Divider(), //Ocupa el espacio que sobra
          _crearEmail(),
          Divider(),
          _ingresaPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),
          Divider(),

          _revisarDatos(),
        ],
      ),
    );
  } //build

  Widget _crearInput() {
    return TextField(
        autofocus: false, //Te mete al textfield de manera automatica
        textCapitalization: TextCapitalization.words,
        //Te pone en mayusculas el inicio de cada palabra

        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17.0),
            ),
            counter: Text('letras ${_direccion.length} '),
            hintText: 'Calle , #numero, CP.',
            labelText: 'Direccion',
            helperText: 'Ingrese su direccion',
            suffixIcon: Icon(Icons.map, color: Colors.blueGrey[400]),
            //Para colocar el icono al final de la caja de texto
            icon: Icon(Icons.location_city, size: 30.0)),
        onChanged: (textoEscrito) {
          //recibe un valor el cual se definio en esta linea
          setState(() {
            _direccion = textoEscrito;
            // print(_direccion);
          });
        });
  } //_crear input

  Widget _crearEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        //Te pone el arroba en el teclado xD

        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
            ),
            counter: Text('letras ${_direccion.length} '),
            labelText: 'email@gmail.com',
            suffixIcon: Icon(Icons.email, size: 30.0)),
        onChanged: (textoEscrito) {
          //recibe un valor el cual se definio en esta linea
          setState(() {
            _password = textoEscrito;
            // print(_direccion);
          });
        });
  } //_crearEmail

  Widget _ingresaPassword() {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
            ),
            counter: Text('letras ${_password.length} '),
            labelText: 'Password',
            suffixIcon: Icon(
              Icons.security,
              size: 30.0,
            )),
        onChanged: (textoEscrito) {
          //recibe un valor el cual se definio en esta linea
          setState(() {
            _password = textoEscrito;
            // print(_direccion);
          });
        });
  } // _ingresaPassword()

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false, //No deja copiar y pegar

      controller: _inputFieldDateController,
      //Se relaciona el controlador del _selectDate con el controller de aqui

      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
          ),
          counter: Text('letras ${_fecha.length} '),
          labelText: 'Fecha de Nacimiento',
          icon: Icon(Icons.date_range, size: 30.0)),

      onTap: () {
        FocusScope.of(context)
            .requestFocus(new FocusNode()); //No es visible eltap
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime piked = await showDatePicker(
      //al retornar un Future se usa el async await
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2019),
      lastDate: new DateTime(2025),
      //locale: Locale('es')
    ); //Se define el rango del calendario

    if (piked != null) {
      setState(() {
        _fecha = piked.toString();
        _inputFieldDateController.text = _fecha;
      }); //Si se pico xd, se le asigna la fecha del calendario al string
    }
  } //Se usa un async await ya que se definira la fecha en tiempo de ejecucion

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = new List();

    _educacion.forEach((nivel) {
      lista.add(DropdownMenuItem(
        child: Text(nivel),
        value: nivel,
      ));
    });

    return lista;
  } //Se agrego a la lista 'lista' los niveles edicativos de la lista _educacion de
  //manera que nos sirvan para el DopDownMenu

  Widget _crearDropdown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.school),
        SizedBox(width: 20),
        DropdownButton(
          value: _nivelEdSeleccionado,
          items: getOpcionesDropdown(), //Se le retorna la lista de niveles educativos
          onChanged: (opt) {
            //recibe opt que aqui mismo se crea xd
            // print(opt);
            setState(() {
              _nivelEdSeleccionado = opt;
            });
          },
        ),
      ],
    ); //DropdownButtom
  }

  Widget _revisarDatos() {
    return ListTile(
      title: Text('Revise sus datos:'),
      subtitle: Text('Su Direccion es: ${_direccion}\nSu email es: ${_email} '),
      trailing: Text(_nivelEdSeleccionado),
    );
  }
} // _IconsPage State
