import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/descarga (1).png', fit: BoxFit.cover),
      ),
        backgroundColor: Colors.blue[50],
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: new Image.asset(
                  'assets/images/cm-home-thumb.png',
                ),
              ),
                new Container(
                child: new Image.asset(
                  'assets/images/promo.png',
                ),
              ),
              //Text(
               // "Bienvenido a Wendys!",
            //style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
              //)
            ],
          ),
        ),
      ),
    );
  } // widget
} // first page