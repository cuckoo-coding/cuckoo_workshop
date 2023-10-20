import 'package:flutter/material.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Menu', style: Theme.of(context).textTheme.displaySmall),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70.0, bottom: 30.0),
            child: Image.asset(
              'assets/pics/cuckoo.png',
              width: MediaQuery.sizeOf(context).width / 2,
              fit: BoxFit.cover,
            ),
          ),
          _buildListItem("Listview", "/listview"),
          _buildListItem("Grid", "/grid"),
          _buildListItem("Animate", "/animate"),
          _buildListItem("Transform", "/transform"),
        ],
      ),
    );
  }

  Widget _buildListItem(String title, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 50,
              child: Text(
                title,
                style: Theme.of(context).textTheme.displayLarge,
              )),
        ),
      ),
    );
  }
}
