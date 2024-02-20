import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Blue is the color of sky',style: TextStyle(color: Colors.white,fontSize: 30),),
            SizedBox(
              height: 30,
            ),
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: Size(200, 50),
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(fontSize: 20)),
              onPressed: () {},
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
              onPressed: () {},
              child: const Text('FALSE'),
            ),
          ],
        ),
      ),
    );
  }
}
