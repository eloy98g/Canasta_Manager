import 'package:flutter/material.dart';
//import 'package:sliding_up_panel/sliding_up_panel.dart';

class Help extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
          Text(
            'Reglas',
            style: TextStyle(
              fontFamily: 'Poker',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black
            ),
          ),
        centerTitle: true,
        backgroundColor: Colors.green[900],
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('./images/tapete.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Color.fromRGBO(253, 245, 243, 0.6),
          padding: new EdgeInsets.all(15.0),
          margin: EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Text('cada 3 negro que quede en la mano de un jugador vale 100 puntos en contra (negativos).'),
              Text('http://www.casinodeagricultura.com/es/fichaNoticia/la-canasta-reglamento'),
            ],
          )
        )
      )
    );
  }
}
