import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Design", style:TextStyle( fontFamily: "Signatura",fontSize: 40)),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/cupcake.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Center(
            child: Container(
             height: 100,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5)
              ),
            )
          ),
          Center(
         child: Text("Practica 1", style: TextStyle(fontSize: 60, color: Colors.black)),
        )

        ],
      ),
    );
  }
}