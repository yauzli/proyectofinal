import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),

            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(2.0),
                  child: Stack(
                    children: <Widget>[
                      Align(
                          child: new Image(
                        width: 300.0,
                        height: 200.0,
                        image: new AssetImage('assets/images/cm-home-thumb.png'),
                      ) //fin de image
                          )
                    ], //fin de widget
                  ), //fin de stack
                ), //container
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Correo Electronico", icon: Icon(Icons.email)), //fin de inputdecoration
                ), //fin de textfield
                SizedBox(
                  height: 40,
                ),

                TextField(
                  decoration: InputDecoration(hintText: "Contraseña", icon: Icon(Icons.lock_outlined)), //fin de inputdecoration
                ), //fin de textfield
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Text('Enviar'),
                      color: Colors.amber,
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      // borderRadius: BorderRadius.circular(30.0),
                      padding: EdgeInsets.all(20.0),
                      onPressed: () {},
                    ), //Fin FlatButton
                    new Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    ),

                    RaisedButton(
                      child: Text(
                        'CANCELAR',
                      ),
                      color: Colors.red[50],
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      // borderRadius: BorderRadius.circular(30.0),
                      splashColor: Colors.pinkAccent,
                      animationDuration: Duration(seconds: 20),
                      padding: EdgeInsets.all(20.0),
                      colorBrightness: Brightness.light,
                      onPressed: () {},
                    ), //Fin Raised Button
                    SizedBox(
                      height: 40,
                    ),
                  ], //Fin niños Widget
                ), //Fin de Niño Row
              ], //fin de widget
            ), //fin de column
          ], //fin de widget
        ), //fin de columna
      ) //fin de container
          ), //safearea
    ); //fin de scaffold
  } // widget
} // first page
