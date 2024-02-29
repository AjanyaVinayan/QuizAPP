import 'package:flutter/material.dart';
import 'package:quize/home_2.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  List quiz=[
    Quiz(qus: 'blue is the colour of sky',ans: true),
    Quiz(qus:' Bats are blind',ans: false),
    Quiz(qus:'Colorblind people can see color',ans: false),
    Quiz(qus: 'cat have four legs',ans: true),
    Quiz(qus: 'green is the colour of leaf',ans: true),
    Quiz(qus: 'kite can fly',ans: true),
    Quiz(qus: 'chilly is sweet',ans: false)
  ];
  int count=0;
  void nextQus() {
    if (count < quiz.length) {
      setState((){

        });
      count++;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quiz[count].qus,style: TextStyle(color: Colors.white,fontSize: 30),),
            SizedBox(
              height: 30,
            ),
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: Size(200, 50),
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(fontSize: 20)),
              onPressed: () {nextQus();},
              child: const Text('TRUE'),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  fixedSize: Size(200, 50),
                  backgroundColor: Colors.red,
                  textStyle: const TextStyle(fontSize: 20)),
              onPressed: () {nextQus();},
              child: const Text('FALSE'),
            ),
          ],
        ),
      ),
    );
  }
}
