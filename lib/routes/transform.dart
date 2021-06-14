import 'dart:math';
import 'package:flutter/material.dart';

class TransformRoute extends StatefulWidget {
  @override
  _TransformRouteState createState() => _TransformRouteState();
}

class _TransformRouteState extends State<TransformRoute> {
  double _rotationFactor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Transform', style: Theme.of(context).textTheme.headline3),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 70.0, bottom: 30.0),
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(pi * _rotationFactor),
            origin: Offset(MediaQuery.of(context).size.width / 4, 0),
            child: Image.asset(
              'assets/pics/cuckoo.png',
              width: MediaQuery.of(context).size.width / 2,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 200),
          child: Slider(
              onChanged: (double value) {
                setState(() {
                  _rotationFactor = value;
                });
              },
              value: _rotationFactor),
        ),
      ]),
    );
  }
}
