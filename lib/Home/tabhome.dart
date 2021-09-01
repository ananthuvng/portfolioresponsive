import 'package:flutter/material.dart';

class TabHome extends StatefulWidget {
  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Image(image: AssetImage('images/bg.png'), fit: BoxFit.cover),
        ),
        Center(
          child: Container(
              height: MediaQuery.of(context).size.width * 0.66,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Image(image: AssetImage('images/me.png'))),
        )
      ],
    ));
  }
}
