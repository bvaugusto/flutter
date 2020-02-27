import 'package:flutter/material.dart';
import './pages/homePage.dart';
import './pages/schoolPage.dart';

class Template extends StatefulWidget {
  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  var homePage = new HomePage();
  var schoolPage = new SchoolPage();

  var _selectPage = 0;
  var _pages;

  @override
  Widget build(BuildContext context) {
    _pages = [homePage, schoolPage];

    return Scaffold(
      appBar: AppBar(title: Text('Contador de cursos')),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School'))
        ],
        fixedColor: Colors.blueAccent,
        currentIndex: _selectPage,
        onTap: (int index) {
          // Set state variable
          setState(() {
            _selectPage = index;
          });
        },
      ),
    );
  }

  _body() {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      constraints: BoxConstraints.expand(),
      child: _pages[_selectPage],
    );
  }
}
