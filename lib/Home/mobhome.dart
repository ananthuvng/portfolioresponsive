import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolioweb/Home/desktophome.dart';
import 'package:portfolioweb/ele/SocialMob.dart';
import 'package:portfolioweb/ele/socialDesk.dart';

class MobHome extends StatefulWidget {
  @override
  _MobHomeState createState() => _MobHomeState();
}

class _MobHomeState extends State<MobHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * .03,
                  top: MediaQuery.of(context).size.width * .025),
              child: Row(children: <Widget>[
                Text(
                  '<',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  'Ananthu',
                  style: GoogleFonts.reenieBeanie(
                      color: Colors.white, fontSize: 24),
                ),
                Text(
                  '/>',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ]),
            )
          ],
        ),
        drawer: Drawer(
            child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 50,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    'Home',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    'About',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.assignment),
                  title: Text(
                    'Skills',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.auto_awesome_mosaic_rounded),
                  title: Text(
                    'Projects',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.mail_outline_rounded),
                  title: Text(
                    'Contact',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        )),
        body: Builder(builder: (context) {
          return Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Image(
                    image: AssetImage('images/bg.png'), fit: BoxFit.cover),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .14,
                    ),
                    Center(
                      child: Container(
                          height: MediaQuery.of(context).size.width * 1.1,
                          width: MediaQuery.of(context).size.width * 1.1,
                          child: Image(image: AssetImage('images/me.png'))),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * .1),
                      child: Text('Hello folks!',
                          style: GoogleFonts.roboto(
                            color: Colors.grey,
                            fontSize: MediaQuery.of(context).size.width * .07,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * .1),
                      child: Text('I\'m Ananthu',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * .117,
                            fontWeight: FontWeight.w800,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * .1),
                      child: TyperAnimatedTextKit(
                          isRepeatingAnimation: true,
                          speed: Duration(milliseconds: 80),
                          textStyle: GoogleFonts.montserrat(
                              fontSize:
                                  MediaQuery.of(context).size.width * .075,
                              fontWeight: FontWeight.w400),
                          text: [
                            "Flutter Developer",
                            "Graphic Designer",
                            "UI/UX Enthusiast",
                            "Programmer"
                          ]),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SocialMob(),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              )
            ],
          );
        }));
  }
}
