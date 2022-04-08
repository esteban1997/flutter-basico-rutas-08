// ignore_for_file: prefer_const_constructors, constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:nav_05/widgets/navigation_button.dart';

class Two extends StatelessWidget {
  static const String ROUTE = '/two';

  @override
  Widget build(BuildContext context) {
    String texto = ModalRoute.of(context)!.settings.arguments as String;

    return NavigationButton(texto: texto);
  }
}
