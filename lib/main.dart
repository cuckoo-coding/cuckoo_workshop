import 'package:cuckoo_workshop/routes/animate.dart';
import 'package:cuckoo_workshop/routes/grid.dart';
import 'package:cuckoo_workshop/routes/home.dart';
import 'package:cuckoo_workshop/routes/listview.dart';
import 'package:cuckoo_workshop/routes/transform.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuckoo Workshop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF00F8AD)),
        textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: 50.0, fontFamily: 'Pangram-Black', color: Colors.black),
          displayMedium: TextStyle(
              fontSize: 30.0, fontFamily: 'Pangram-Black', color: Colors.black),
          headlineLarge: TextStyle(
              fontSize: 16.0, fontFamily: 'OverpassMono', color: Colors.black),
          headlineMedium: TextStyle(
              fontSize: 14.0, fontFamily: 'OverpassMono', color: Colors.black),
          bodyMedium: TextStyle(
              fontSize: 14.0, fontFamily: 'Montserrat', color: Colors.black),
        ),
        useMaterial3: true,
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
