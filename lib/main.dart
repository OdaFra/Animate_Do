import 'package:flutter/material.dart';


import 'package:animato_do/src/pages/pagina_1.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animate_do',
      home:Pagina1Page() 
      //TwuitterPage()
    );
  }
}