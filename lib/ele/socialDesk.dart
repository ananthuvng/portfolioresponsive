import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolioweb/Home/desktophome.dart';
import 'package:url_launcher/url_launcher.dart';

const _urlgit = 'https://flutter.dev';
const _urlinsta = 'https://flutter.dev';
const _urlin = 'https://flutter.dev';
const _urltwit = 'https://flutter.dev';

class SocialDesk extends StatefulWidget {
  @override
  _SocialDeskState createState() => _SocialDeskState();
}

class _SocialDeskState extends State<SocialDesk> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () async => await canLaunch(_urlgit)
                ? await launch(_urlgit)
                : throw 'Could not launch $_urlgit',
            child: HoverWidget(
              hoverChild: Container(
                height: MediaQuery.of(context).size.width * .03,
                width: MediaQuery.of(context).size.width * .03,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Colors.redAccent,
                ),
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Center(
                      child: Image(
                    image: AssetImage('images/git.png'),
                  )),
                ),
              ),
              onHover: (event) {},
              child: Container(
                height: MediaQuery.of(context).size.width * .03,
                width: MediaQuery.of(context).size.width * .03,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Center(
                      child: Image(
                    image: AssetImage('images/git.png'),
                  )),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () async => await canLaunch(_urltwit)
                ? await launch(_urltwit)
                : throw 'Could not launch $_urltwit',
            child: HoverWidget(
              hoverChild: Container(
                height: MediaQuery.of(context).size.width * .03,
                width: MediaQuery.of(context).size.width * .03,
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
              ),
              onHover: (event) {},
              child: Container(
                height: MediaQuery.of(context).size.width * .03,
                width: MediaQuery.of(context).size.width * .03,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.all(7),
                  child: Center(
                      child: Image(
                    image: AssetImage('images/twi.png'),
                  )),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () async => await canLaunch(_urlin)
                ? await launch(_urlin)
                : throw 'Could not launch $_urlin',
            child: HoverWidget(
              hoverChild: Container(
                height: MediaQuery.of(context).size.width * .03,
                width: MediaQuery.of(context).size.width * .03,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Colors.redAccent,
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Image(
                    image: AssetImage('images/in.png'),
                  )),
                ),
              ),
              onHover: (event) {},
              child: Container(
                height: MediaQuery.of(context).size.width * .03,
                width: MediaQuery.of(context).size.width * .03,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Image(
                    image: AssetImage('images/in.png'),
                  )),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () async => await canLaunch(_urlinsta)
                ? await launch(_urlinsta)
                : throw 'Could not launch $_urlinsta',
            child: HoverWidget(
              hoverChild: Container(
                height: MediaQuery.of(context).size.width * .03,
                width: MediaQuery.of(context).size.width * .03,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Colors.redAccent,
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Image(
                    image: AssetImage('images/insta.png'),
                  )),
                ),
              ),
              onHover: (event) {},
              child: Container(
                height: MediaQuery.of(context).size.width * .03,
                width: MediaQuery.of(context).size.width * .03,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Image(
                    image: AssetImage('images/insta.png'),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
