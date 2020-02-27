import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Contador',
      // home: new Container(
      //   color: Color.fromARGB(255, 255, 255, 255),
      //   child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[Text('Contador')]),
      // ),
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contador',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black12,
                    fontSize: 50,
                    decoration: TextDecoration.none))
          ]),
    );
  }
}
