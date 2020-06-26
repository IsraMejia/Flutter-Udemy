import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0), //para serpararlo 10 px a la derecha
            child: CircleAvatar(
              backgroundColor: Colors.indigo[700] ,
              child: Text('IM'),
            ),
          ),

          Container(
            padding: EdgeInsets.all(7),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://live.mrf.io/statics/i/ps/www.muylinux.com/wp-content/uploads/2017/06/github.png?width=1200&enable=upscale'),
              radius: 20,
            ),
          )

        ],
      ),


      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://live.mrf.io/statics/i/ps/www.muylinux.com/wp-content/uploads/2017/06/github.png?width=1200&enable=upscale'),
          fadeInDuration: Duration( milliseconds:200 ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        }, //El context nos manda a la pagina anterior ;D
      ),

    );
  }
}