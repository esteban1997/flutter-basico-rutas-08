// ignore_for_file: prefer_const_constructors, constant_identifier_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_conditional_assignment

import 'package:flutter/material.dart';
import 'package:nav_05/widgets/navigation_button.dart';

class One extends StatelessWidget {
  static const String ROUTE = '/one';

  @override
  Widget build(BuildContext context) {
    String? texto = ModalRoute.of(context)!.settings.arguments as String?;

    if (texto == null) {
      texto = "Default 1";
    }

    return NavigationButton(texto: texto);
  }
}
