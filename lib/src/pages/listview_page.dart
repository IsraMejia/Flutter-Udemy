import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();
  
  List<int> _listaNumeros = new List();
  int _ultimoItem =0;
  
  @override
  void initState() { //Permite que no se rompa la app al tener _listaNumeros vacia
    super.initState(); //inicializa la clase state
    _agergar10imagenes();//rellena la lista con 10 posiciones para las imagenes xd

    _scrollController.addListener( (){
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent ){
        print('final de pagina');
        _agergar10imagenes();
      }
    } );//Se inicializa por defecto el scrollController
    
  }//initState

   @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }//Para que deje de usar memoria el _scrollcontroller cuando salga de la pagina


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista infinita'),
      ),

      body: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length, //Numero de items actuales
        itemBuilder: ( BuildContext context , int index){
          final imagen =_listaNumeros[index];
          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif') , 
            image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
          );
        } ,
        
      ) , 
    );
  }//build 

  _agergar10imagenes(){
    for(int i=1; i<11; i++){
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
  }
    setState(() {
      
    });
  }//_agergar10imagenes()

 


}//_ListaPageState State<ListaPage>