import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

final partidas = {1,2,3,4,5,6,7,8,9,10};

class CurrentGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Partidas actuales',
          style: TextStyle(
              fontFamily: 'Poker',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('./images/tapete.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          //color: Color.fromRGBO(253, 245, 243, 0.6),
          padding: new EdgeInsets.all(15.0),
          margin: EdgeInsets.all(8.0),
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(partidas.length, (index) {
              return Card(
                child: Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage('./images/redcard.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text('Partida'+index.toString())
                )
              );
            }),
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          return Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => addGame()),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Colors.green[800],
        foregroundColor: Colors.black,
      ),
    );
  }
}

class addGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NUEVA PARTIDA',
          style: TextStyle(
              fontFamily: 'Poker',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        backgroundColor: Colors.green[900],
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
        )
      ),
    );
  }
}
