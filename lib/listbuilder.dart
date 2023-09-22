import 'package:flutter/material.dart';

class Listbuilder extends StatefulWidget {
  const Listbuilder({super.key});

  @override
  State<Listbuilder> createState() => _ListbuilderState();
}

class _ListbuilderState extends State<Listbuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding:const EdgeInsets.all(8),
            child: Container(
              height:100,
              width: 100,
              color: Colors.deepOrange,
            ),

          );

        }),
    );
  }
}