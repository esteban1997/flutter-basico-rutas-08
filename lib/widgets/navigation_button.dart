// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:nav_05/pages/one.dart';
import 'package:nav_05/pages/dos.dart';
import 'package:nav_05/pages/tres.dart';
import 'package:nav_05/pages/cuatro.dart';

class NavigationButton extends StatelessWidget {
  final String texto;

  const NavigationButton({required this.texto}) : super();

  @override
  Widget build(BuildContext context) {
    final elevatedButtonStyle = ElevatedButton.styleFrom(
        primary: Colors.purple, onPrimary: Colors.white);

    return Scaffold(
      appBar: AppBar(title: Text(texto)),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {
                  Navigator.pushNamed(context, One.ROUTE, arguments: "Uno 1");
                },
                child: Text("PAGINA 1")),
            ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {
                  Navigator.pushNamed(context, Two.ROUTE, arguments: "Dos 2");
                },
                child: Text("PAGINA 2")),
            ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {
                  Navigator.pushNamed(context, Three.ROUTE,
                      arguments: "Tres 3");
                },
                child: Text("PAGINA 3")),
            ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {
                  Navigator.pushNamed(context, Four.ROUTE,
                      arguments: "Cuatro 4");
                },
                child: Text("PAGINA 4")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: Text("volver"))
          ],
        ),
      ),
    );
  }
}
