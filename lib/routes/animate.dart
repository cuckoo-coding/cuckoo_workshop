import 'package:cuckoo_workshop/utilities/custom_colors.dart';
import 'package:flutter/material.dart';

class AnimateRoute extends StatefulWidget {
  @override
  _AnimateRouteState createState() => _AnimateRouteState();
}

class _AnimateRouteState extends State<AnimateRoute> {
  bool buttonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Animate', style: Theme.of(context).textTheme.headline3),
      ),
      body: AnimatedOpacity(
        opacity: buttonClicked ? 0.0 : 1.0,
        duration: Duration(seconds: 2),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 70.0, bottom: 30.0),
              child: Center(
                child: Image.asset(
                  'assets/pics/cuckoo.png',
                  width: MediaQuery.of(context).size.width / 2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Everything fades away eventually....",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "And returns.",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "And fades.",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "And returns.",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "And fades.",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "Ah whatever...",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _playAnimation,
        tooltip: 'Animation',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _playAnimation() {
    setState(() {
      buttonClicked ? buttonClicked = false : buttonClicked = true;
    });
  }
}
