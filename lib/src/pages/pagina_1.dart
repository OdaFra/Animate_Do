import 'package:animate_do/animate_do.dart';
import 'package:animato_do/src/pages/twitter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeIn(
          duration: const Duration(milliseconds: 500),
          child: Text('Animate_do')),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (() {
              Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) =>TwuitterPage()));
            }),
            icon: FaIcon(FontAwesomeIcons.twitter),
          ),
          SlideInLeft(
            from: 10,
            child: IconButton(
              onPressed: (() {
                Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) =>Pagina1Page()));
              }),
              icon: Icon(Icons.navigate_next_outlined),
            ),
          ),
        ],
      ),
      floatingActionButton: ElasticInRight(
        child: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            ElasticIn(
              delay: const Duration(milliseconds: 1500),
              child: const Icon(
                Icons.new_releases,
                color: Colors.blue,
                size: 40,
              ),
            ),
             FadeInDown(
               delay: const Duration(milliseconds: 200),
               child: const Text(
                'Titulo',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
                         ),
             ),
            FadeInDown(
              delay: const Duration(milliseconds: 1500),
              child: const Text(
                'Soy un texto pequeño',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            FadeInLeft(
              delay: const Duration(milliseconds: 1500),
              child: Container(
                width: 200,
                height: 2,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
