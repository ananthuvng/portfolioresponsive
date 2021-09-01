import 'package:flutter/material.dart';
import 'package:portfolioweb/ele/socialDesk.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class DesktopHome extends StatefulWidget {
  @override
  _DesktopHomeState createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          leading: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * .03,
                    top: MediaQuery.of(context).size.width * .025),
                child: Row(
                  children: <Widget>[
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
                  ],
                ),
              )
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child:
                  Image(image: AssetImage('images/bg.png'), fit: BoxFit.cover),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .5,
                  ),
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: Image(image: AssetImage('images/me.png'))),
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .15,
              ),
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text('Hello folks!',
                        style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: MediaQuery.of(context).size.width * .026,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text('I\'m Ananthu',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * .05,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: TyperAnimatedTextKit(
                        isRepeatingAnimation: true,
                        speed: Duration(milliseconds: 80),
                        textStyle: GoogleFonts.montserrat(
                            fontSize: MediaQuery.of(context).size.width * .0350,
                            fontWeight: FontWeight.w400),
                        text: [
                          "Flutter Developer",
                          "Graphic Designer",
                          "UI/UX Enthusiast",
                          "Programmer"
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SocialDesk(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.width * .024,
                      width: MediaQuery.of(context).size.width * .1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                        child: Text(
                          'Contact Now',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.012,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                ],
              ),
            )
          ],
        ));
  }
}
