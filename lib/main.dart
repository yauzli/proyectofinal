import 'package:flutter/material.dart';
import 'package:cruz/pages/first_pages.dart';
import 'package:cruz/pages/second_pages.dart';
import 'package:cruz/pages/third_pages.dart';
import 'package:cruz/pages/four_pages.dart';
void main() => runApp(CruzApp());

class CruzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamburguesa de Cruz',
      home: PaginaInicio(),
    ); //fin materialapp
  }
} //fin clase Cruzapp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //fin inicio clase con estado

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FirstPage());

        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
      case 3:
      child = MaterialApp(debugShowCheckedModeBanner: false, home: new FourPage());
        break;
    } //fin de switch
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey[400], size: 30.0), //icon
            title: Text('INICIO')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined, color: Colors.grey[400], size: 30.0), //icon
            title: Text('SESION')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined, color: Colors.grey[400], size: 30.0), //icon
            title: Text('OFERTAS')), //Icons.restaurant_outlined
        BottomNavigationBarItem(
            icon: Icon(Icons.add_outlined, color: Colors.grey[400], size: 30.0), //icon
            title: Text('REGISTRO')), //Icons.restaurant_outlined
      ]), // bottom
    ); //fin de scaffold
  } //fin de widget
} //fin de paginainiciostateIcons.person_outlined