import 'package:flutter/material.dart';
import 'package:gamingpanda/about_you.dart';
import 'package:gamingpanda/chat.dart';
import 'package:gamingpanda/filters.dart';
import 'package:gamingpanda/login.dart';
import 'package:gamingpanda/profile.dart';
import 'package:gamingpanda/registration.dart';
import 'package:gamingpanda/settings.dart';
import 'package:gamingpanda/splash.dart';

import 'global.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Schyler",
        textTheme: TextTheme(body1: TextStyle(fontSize: Global.fontsize),body2: TextStyle(fontSize: Global.fontsize),
        title:TextStyle(fontSize: Global.fontsize) ,
        ),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,

      ),
      home: chatscreen(),
      routes: {

      'login':(context)=>loginpage(),
        'registerp':(context)=>register(),


      },
    );
  }
}

