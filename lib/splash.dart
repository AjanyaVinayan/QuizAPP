import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quize/home.dart';

class SplashApp extends StatefulWidget {
  const SplashApp({Key? key}) : super(key: key);

  @override
  State<SplashApp> createState() => _SplashAppState();
}

class _SplashAppState extends State<SplashApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeApp(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage:NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Spotify_App_Logo.svg/800px-Spotify_App_Logo.svg.png'),
            radius: 50,
          ),
          Text('Spotify',style: TextStyle(fontSize:40)),
        ],
      ),
      ),
    );
  }
}
