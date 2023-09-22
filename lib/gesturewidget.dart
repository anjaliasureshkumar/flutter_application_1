import 'package:flutter/material.dart';
class Gesture extends StatefulWidget {
  const Gesture({super.key});

  @override
  State<Gesture> createState() => _GestureState();
}

class _GestureState extends State<Gesture> {
  int numberofTimesTapped=0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Tapped'+numberofTimesTapped.toString()+'times',style: const TextStyle(fontSize: 30),),
            GestureDetector(
              onTap: () {
                setState(() {
                  numberofTimesTapped++;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                color: Colors.amberAccent,
                child: const Text('Tap here',style: TextStyle(fontSize: 25),),
              ),
            )
          ],
        ),
      ),
    );
  }
}