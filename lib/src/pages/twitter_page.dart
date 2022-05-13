import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwuitterPage extends StatefulWidget {
  @override
  State<TwuitterPage> createState() => _TwuitterPageState();
}

class _TwuitterPageState extends State<TwuitterPage> {

  bool activar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {
          setState(() {
         activar=true;
        });
        },
        child: FaIcon(FontAwesomeIcons.play),
      ),
      backgroundColor: Color(0xff1da1f2),
      body: Center(
          child: ZoomOut(
        animate: activar,
        from: 30,
        duration: Duration(seconds: 1),
        child: const FaIcon(
          FontAwesomeIcons.twitter,
          color: Colors.white,
          size: 30,
        ),
      )),
    );
  }
}
