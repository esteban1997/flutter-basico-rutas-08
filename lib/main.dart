// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nav_05/pages/dos.dart';
import 'package:nav_05/pages/one.dart';
import 'package:nav_05/pages/tres.dart';
import 'package:nav_05/pages/cuatro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rutas y navegacion',
      initialRoute: One.ROUTE,
      routes: {
        One.ROUTE: (_) => One(),
        Two.ROUTE: (_) => Two(),
        Three.ROUTE: (_) => Three(),
        Four.ROUTE: (_) => Four(),
      },
    );
  }
}
