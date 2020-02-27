import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _cursos = 0;
  int _selectedImage = 0;
  var _images = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png'
  ];

  @override
  Widget build(BuildContext context) {
    var images = _images;
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(images[_selectedImage], height: 100.0),
          Text('Cursos',
              textAlign: TextAlign.center,
              // style: TextStyle(
              //     color: Colors.black12,
              //     fontSize: 50,
              //     decoration: TextDecoration.none))
              // ou
              // style: Theme.of(context).textTheme.display2)

              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(fontWeight: FontWeight.w800)),
          Text('Você completou $_cursos',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(fontWeight: FontWeight.w500)),
          Padding(
              padding: EdgeInsets.all(30),
              child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _cursos++;

                      int selectedImage = _cursos ~/ 2;
                      if (selectedImage <= 2) {
                        _selectedImage = selectedImage;
                      } else if (selectedImage <= 3) {
                        _selectedImage = selectedImage;
                      } else if (selectedImage >= 4) {
                        _selectedImage = 3;
                      }
                    });
                  },
                  child: Icon(Icons.add)))
        ]);
  }
}
