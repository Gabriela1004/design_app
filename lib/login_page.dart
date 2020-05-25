

import 'package:design_app/place_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget{

  @override
  Widget build( BuildContext context){
    // TODO: implement build
    return Scaffold(
      body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
      children: <Widget>[
        Padding(
        padding: EdgeInsets.only(top:60),
        child: FlutterLogo(size: 140,),
        ),
        Padding(
          padding: EdgeInsets.only(top: 24),
          child: Text("Travel App",
            textAlign: TextAlign.center,
            style:TextStyle(
              fontFamily: "ChocolateValentine",
              fontSize: 80,
              fontWeight: FontWeight.w700,
              color:  Colors.indigo,
            ),
            ),
        ),
        Padding(
          padding: EdgeInsets.only(top:10),
          child: Text(
              "Bienvenido",
          textAlign: TextAlign.center,
          style:
              GoogleFonts.lacquer(
                textStyle: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color:  Colors.indigo,
                )
              ),

         /* TextStyle(
              color: Colors.teal[200],
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),*/
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 16, left: 8, right:8 ),
          child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color:Colors.indigo,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(Icons.account_circle, color : Colors.white),
                      ),
                      Container(
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.indigo
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Usuario",
                              fillColor:  Colors.white,
                              filled: true,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                ),
              )
            ],
          ),
        )
        ),
        Padding(
            padding:  EdgeInsets.only(top: 16, left: 8, right:8 ),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 300,
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color:Colors.indigo,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(Icons.vpn_key, color : Colors.white),
                          ),
                          Container(
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                )
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: TextFormField(
                                obscureText: true,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.indigo
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Contraseña",
                                  fillColor:  Colors.white,
                                  filled: true,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                    ),
                  )
                ],
              ),
            )
        ),
        Padding(
          padding: EdgeInsets.only(top: 20,left: 8,right:8),
          child: Container(
            width: 300,
            height: 130,
            padding:  EdgeInsets.all(40),
            child: RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> PlacePage()
                  )
                  );
              },
              elevation: 5,
              color: Colors.indigo,
              child: Text(
                  "Entrar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,

              )),

            ),
          ),
        ),
      ],

      )
    )
    );
  }


}