import 'package:flutter/material.dart';

class Listseperator extends StatefulWidget {
  const Listseperator({super.key});

  @override
  State<Listseperator> createState() => _ListseperatorState();
}

class _ListseperatorState extends State<Listseperator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          width: 100,
          color: Colors.red,
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
     )
    );
  }
}