import 'dart:io' show Platform;

import 'package:cuckoo_workshop/models/title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewRoute extends StatefulWidget {
  const ListviewRoute({Key? key}) : super(key: key);

  @override
  _ListviewRouteState createState() => _ListviewRouteState();
}

class _ListviewRouteState extends State<ListviewRoute> {
  List<String> myList = ["Hello", "World", "how", "are", "you?"];
  List<MyTitle> myListOfTitles = [
    MyTitle(title: "Hello", subtitle: "World"),
    MyTitle(title: "how", subtitle: "are"),
    MyTitle(title: "you?", subtitle: "Thanks"),
    MyTitle(title: "I'm", subtitle: "fine.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:
            Text('Listview', style: Theme.of(context).textTheme.displayMedium),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 30.0),
            child: Text("My Listview Header",
                style: Theme.of(context).textTheme.displayMedium),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, i) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(myListOfTitles[i].title),
                        subtitle: Text(myListOfTitles[i].subtitle),
                        leading: Icon(
                          Icons.emoji_emotions_sharp,
                          color: Colors.black,
                          size: 40.0,
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Platform.isIOS
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: CupertinoButton(
                    color: Colors.pink,
                    onPressed: () {},
                    child: Text(
                      "IOS Button",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Android Button',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
