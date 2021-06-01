import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text('Ofertas'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              _crearCard1(),
              _crearCard2(),
              _crearCard3()
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearCard1() {
        return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: new Image.asset(
                'assets/images/IZZI4.PNG',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('nuestros servicios-2021'),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearCard2() {
      return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: new Image.asset(
                'assets/images/IZZI3.PNG',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('nuestros servicios-2021'),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearCard3() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: new Image.asset(
                'assets/images/IZZI5.PNG',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('nuestros servicios-2021'),
            )
          ],
        ),
      ),
    );
  } // widget
} // first page
