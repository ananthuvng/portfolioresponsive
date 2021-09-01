import 'package:flutter/material.dart';

class SocialMob extends StatefulWidget {
  @override
  _SocialMobState createState() => _SocialMobState();
}

class _SocialMobState extends State<SocialMob> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          GestureDetector(
              child: Container(
            height: MediaQuery.of(context).size.width * .1,
            width: MediaQuery.of(context).size.width * .1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(300),
              color: Colors.redAccent,
            ),
            child: Container(
              padding: EdgeInsets.all(7),
              child: Center(
                  child: Image(
                image: AssetImage('images/twi.png'),
              )),
            ),
          )),
        ],
      ),
    );
  }
}
