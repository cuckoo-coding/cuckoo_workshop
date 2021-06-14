import 'package:flutter/material.dart';

class GridRoute extends StatefulWidget {
  @override
  _GridRouteState createState() => _GridRouteState();
}

class _GridRouteState extends State<GridRoute> {
  List<IconData> myList = [
    Icons.add_location,
    Icons.add_location_alt,
    Icons.add_location_alt_outlined,
    Icons.add_location_alt_rounded,
    Icons.add_location_alt_sharp,
    Icons.add_location_outlined,
    Icons.add_location_sharp,
    Icons.add_location_rounded
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Gridview', style: Theme.of(context).textTheme.headline3),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 30.0),
            child: Text("My Gridview Header", style: Theme.of(context).textTheme.headline3),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                  gridDelegate:
                      SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150, childAspectRatio: 3 / 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
                  itemCount: myList.length,
                  itemBuilder: (context, i) {
                    return Card(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridTile(
                          child: Icon(myList[i], color: Colors.white, size: 40.0),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
