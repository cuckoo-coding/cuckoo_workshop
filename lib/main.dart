import 'package:flutter/material.dart';

import 'package:cuckoo_workshop/utilities/custom_colors.dart';
import 'package:cuckoo_workshop/routes/home.dart';
import 'package:cuckoo_workshop/routes/listview.dart';
import 'package:cuckoo_workshop/routes/grid.dart';
import 'package:cuckoo_workshop/routes/animate.dart';
import 'package:cuckoo_workshop/routes/transform.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuckoo Workshop',
      theme: ThemeData(
        primarySwatch:
            MaterialColor(0xFF00F8AD, CustomColors.neonGreenMaterialSwatch),
        textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: 50.0, fontFamily: 'Pangram-Black', color: Colors.black),
          displayMedium: TextStyle(
              fontSize: 50.0, fontFamily: 'Pangram-Black', color: Colors.white),
          displaySmall: TextStyle(
              fontSize: 30.0, fontFamily: 'Pangram-Black', color: Colors.black),
          headlineMedium: TextStyle(
              fontSize: 30.0, fontFamily: 'Pangram-Black', color: Colors.white),
          bodyLarge: TextStyle(
              fontSize: 14.0, fontFamily: 'Montserrat', color: Colors.white),
          bodyMedium: TextStyle(
              fontSize: 14.0, fontFamily: 'Montserrat', color: Colors.black),
          titleMedium: TextStyle(
              fontSize: 16.0, fontFamily: 'OverpassMono', color: Colors.black),
          titleSmall: TextStyle(
              fontSize: 14.0, fontFamily: 'OverpassMono', color: Colors.black),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeRoute(),
        '/listview': (context) => ListviewRoute(),
        '/grid': (context) => GridRoute(),
        '/animate': (context) => AnimateRoute(),
        '/transform': (context) => TransformRoute(),
      },
    );
  }
}

