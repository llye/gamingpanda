import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'cards.dart';
import 'matches.dart';
import 'profiles.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static final List<Profile> demoProfiles = [
    new Profile(
      photos: [
        'http://admin.mysuitors.com/uploads/20190419093131am.jpg',
        'http://admin.mysuitors.com/uploads/20190419093204am.jpg',
        'http://admin.mysuitors.com/uploads/20190419093131am.jpg',
      ],
      name: 'Someone Special',
      bio: 'This is the person you want!',
      id: "1"
    ),
    new Profile(
      photos: [
        'http://admin.mysuitors.com/uploads/20190419093131am.jpg',
        'http://admin.mysuitors.com/uploads/20190419093204am.jpg',
        'http://admin.mysuitors.com/uploads/20190419093131am.jpg',
      ],
      name: 'Someone Special',
      bio: 'This is the person you want!',
      id:"2"
    ),
  ];



  List<Profile> UserProfiles = new List();
  List<DateMatch> UserMatches = new List();



  MatchEngine matchEngine ;

  int init=0;

  Widget _buildAppBar() {
    return new AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: new IconButton(
        icon: new Icon(
          Icons.person,
          color: Colors.grey,
          size: 40.0,
        ),
        onPressed: () {
          // TODO:
        },
      ),
      title: new FlutterLogo(
        size: 30.0,
        colors: Colors.red,
      ),
      actions: <Widget>[
        new IconButton(
          icon: new Icon(
            Icons.chat_bubble,
            color: Colors.grey,
            size: 40.0,
          ),
          onPressed: () {
            // TODO:
          },
        )
      ],
    );
  }

  Widget _buildBottomBar() {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0.0,
      child: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new RoundIconButton.small(
              icon: Icons.refresh,
              iconColor: Colors.orange,
              onPressed: () {
                // TODO:
              },
            ),
            new RoundIconButton.large(
              icon: Icons.clear,
              iconColor: Colors.red,
              onPressed: () {
                matchEngine.currentMatch.nope();
              },
            ),
            new RoundIconButton.small(
              icon: Icons.star,
              iconColor: Colors.blue,
              onPressed: () {
                matchEngine.currentMatch.superLike();
              },
            ),
            new RoundIconButton.large(
              icon: Icons.favorite,
              iconColor: Colors.green,
              onPressed: () {
                matchEngine.currentMatch.like();
              },
            ),
            new RoundIconButton.small(
              icon: Icons.lock,
              iconColor: Colors.purple,
              onPressed: () {
                // TODO:
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new
    Scaffold(
    //  appBar: _buildAppBar(),
    body:SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: new CardStack(
                matchEngine: matchEngine,),
            ),

          ],
        ),
     //   child:Text("asf")

      )

    );
  }

  void initState() {
    // TODO: implement initState
    print(demoProfiles);
    super.initState();

    matchEngine = new MatchEngine(
      matches: demoProfiles.map((Profile profile) {
        return new DateMatch(profile: profile);
      }).toList(),
    );


  }




}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double size;
  final VoidCallback onPressed;

  RoundIconButton.large({
    this.icon,
    this.iconColor,
    this.onPressed,
  }) : size = 60.0;

  RoundIconButton.small({
    this.icon,
    this.iconColor,
    this.onPressed,
  }) : size = 50.0;

  RoundIconButton({
    this.icon,
    this.iconColor,
    this.size,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: size,
      height: size,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          new BoxShadow(
            color: const Color(0x11000000),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: new RawMaterialButton(
        shape: new CircleBorder(),
        elevation: 0.0,
        child: new Icon(
          icon,
          color: iconColor,
        ),
        onPressed: onPressed,
      ),
    );
  }





}
