import 'package:flutter/material.dart';

class Help extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reglas'),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body:Container(
        child: Column(
          children: <Widget>[
            Text('WORK IN PROGRESS'),
            Text('http://www.casinodeagricultura.com/es/fichaNoticia/la-canasta-reglamento'),
          ],
        )
      )
    );
  }
}