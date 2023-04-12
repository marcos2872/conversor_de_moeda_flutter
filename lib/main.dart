import 'dart:async';
import 'package:flutter/material.dart';
import 'package:conversor_de_moedas/app/views/home_view.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Conversor de Moedas',
      home: HomeView(),
    );
  }
}
