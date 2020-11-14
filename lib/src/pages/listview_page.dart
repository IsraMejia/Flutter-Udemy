import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();
  
  List<int> _listaNumeros = new List();
  int _ultimoItem =0;
  bool _isLoading = false;
  
  @override
  void initState() { //Permite que no se rompa la app al tener _listaNumeros vacia
    super.initState(); //inicializa la clase state
    _agergar10imagenes();//rellena la lista con 10 posiciones para las imagenes xd

    _scrollController.addListener( (){
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent ){
        print('final de pagina');
        // _agergar10imagenes(); //se manda a llamar ahora en fetch data
        fetchData(); //buscarDatos
      }
    } );//Se inicializa por defecto el scrollController
    
  }//initState

   @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }//Para que deje de usar memoria el _scrollcontroller cuando salga de la pagina
  //En si elimina el listener que ya no ocupammos



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista infinita'),
      ),

      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ], 
      ),
      

    );
  }//build 

  Widget _crearLista(){
    return ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length, //Numero de items actuales
        itemBuilder: ( BuildContext context , int index){
          final imagen =_listaNumeros[index];
          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif') , 
            image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
          );
        } ,
        
      ); 
      //fin ListView.builder(
  }

  Widget _crearLoading(){
    if( _isLoading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(child: CircularProgressIndicator()),
          SizedBox(height: 20,)
        ],
      );
    }else{
      return Container();
    }
  }

  _agergar10imagenes(){
    for(int i=1; i<11; i++){
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
  }
    setState(() {
      
    });
  }//_agergar10imagenes()

  Future <Null> fetchData() async{
    /**Un future que no se resulve con ningun valor, 
     * solo despues de 2 segundos dispara el metodo respuestaHTTP
     */
    _isLoading = true; 
    setState(() {    });
    
    final  duration = new Duration(seconds: 2);
    new Timer( duration , respuestaHTTP);
    //manda solo la referencia, para que no dispare el metodo al leerlo, sino cuando paso el timer
  }

  void respuestaHTTP(){
    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels +100 , //Sube el scroll 100px hacia arriba cuando cargo
      duration: Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn
    );

    _agergar10imagenes();
  }


}//_ListaPageState State<ListaPage>