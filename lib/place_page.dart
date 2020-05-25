
import 'dart:ui';

import 'package:flutter/material.dart';

class PlacePage extends StatefulWidget {
  bool liked=true;
  @override
  State<StatefulWidget> createState()
  =>new PlacePageState();
  }


class PlacePageState extends State<PlacePage>{
  @override
  Widget build(BuildContext context) {
    Widget title= Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Canales de Xochimilco Radioactivos",
              style: TextStyle(fontWeight: FontWeight.bold),
                ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Text(
                  "Xochimilco, CDMX, Mexico",
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                ),
                ),
              )
              ],
            ),
          ),
          Icon(widget.liked? Icons.favorite: Icons.favorite_border ,color: Colors.red),
          Text("41"),
        ],
      ),
    );
    Widget buttons= Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonsColumn(Colors.blue, Icons.call, "CALL"),
        _buildButtonsColumn(Colors.blue, Icons.near_me, "ROUTE"),
        _buildButtonsColumn(Colors.blue, Icons.share, "SHARE"),
      ],
    );
    Widget description=Container(
      padding: EdgeInsets.all(32),
      child: Text(
      'Recientemente he iniciado las prácticas en The Cocktail y al comenzar el set up del proyecto surgió'
          'un debate entre los componentes del equipo que me resultó curioso,trataba sobre qué DB (Database) utilizaríamos,'
        'la verdad es que la lluvia de argumentos y la disparidad de opiniones inclinándose hacia una u otra fue bastante notoria.',
      softWrap: true,
      )
    );
    Widget bodyPortrait= ListView(
      children: <Widget>[
      Image.asset(
        'assets/img/arbol.jpg',
        height: 240,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover),
      title,
      buttons,
      description,
    ],
    );
    Widget bodyLandscape= Row(
      children: <Widget>[
    Image.asset(
    'assets/img/arbol.jpg',
      height: MediaQuery.of(context).size.height,
      width: 280,
      fit: BoxFit.cover,
    ),
    Expanded(
    child: ListView(
      children: <Widget>[
        title,
        buttons,
        description
        ],
    ),
    )
    ],
    );
    return Scaffold(
      appBar: AppBar(title: Text("Place Page")),
      body:OrientationBuilder(
    builder: (context,orientation){
      return orientation== Orientation.portrait ? bodyPortrait: bodyLandscape;
    },
    ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              widget.liked= !widget.liked;
              print(widget.liked);
            });

          },
          backgroundColor: Colors.red,
          child: Icon(Icons.favorite, color: Colors.white,),
        ),
    );
  }
  Widget _buildButtonsColumn(Color color, IconData icon, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, color:color),
        Container(
          margin: EdgeInsets.only(top:8),
          child: Text(label, style: TextStyle(color: color),),

        )
      ],
    );
  }
}