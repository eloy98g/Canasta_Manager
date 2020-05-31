import 'package:flutter/material.dart';


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
        color: Colors.green[600],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BotonInicio(context, 'Partidas guardadas'),
            BotonInicio(context, 'Ayuda'),
            BotonInicio(context, 'Placeholder'),
            BotonInicio(context, 'Placeholder2')
          ],
        )
      )
    );
  }
}

Widget BotonInicio(BuildContext context, String text){
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
      /*onPressed: (){//Al pulsar
        return Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GameLaunch(mode)),
        );
      },*/
    )
  );
}