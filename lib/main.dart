import 'package:canastaapp/games.dart';
import 'package:flutter/material.dart';
import 'package:canastaapp/ayuda.dart';
import 'package:canastaapp/finished.dart';


void main(){
  runApp(Aplicacion());
}

class Aplicacion extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'CoVid App',
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Canasta Manager'),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: Container(
        /*decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('images/tapete.png'),
            fit: BoxFit.cover,
          ),
        ),*/
        color: Colors.green[600],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BotonInicio(context, 'Partidas actuales', 'games.dart'),
            BotonInicio(context, 'Partidas finalizadas', 'finished.dart'),
            BotonInicio(context, 'Reglas', 'ayuda.dart'),
          ],
        )
      )
    );
  }
}

Widget BotonInicio(BuildContext context, String text, String route){
  return Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.red[500],
    width: 400.0,
    height: 100.0,
    child: OutlineButton(
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.black
        ),
      ),
      onPressed: (){
        if(route == 'ayuda.dart'){
          return Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Help()),
          );
        }else if(route == 'games.dart'){
          return Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CurrentGames()),
          );
        }else{
          return Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FinishedGames()),
          );
        }
      }
    )
  );
}
/*
* return Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GameLaunch(mode)),
        );
* */