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
      backgroundColor: Colors.purple,
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS36qtpCv0ifw5-es-EIYrlJTw1VEqYMI6fVishZuS-c2OprIsr3Z2ZtZv5QUEBNXr52qI&usqp=CAU'),
            radius: 100,
          ),
          SizedBox(
            height: 15,
          ),
          Text('QUIZ TIME',style: TextStyle(fontSize:40,color:Colors.pink)),
        ],
      ),
      ),
    );
  }
}
