import 'package:flutter/material.dart';
import 'package:flutter_application_1/datePicker.dart';
import 'package:flutter_application_1/listbuilder.dart';
import 'package:flutter_application_1/listseperator.dart';
import 'package:flutter_application_1/listview.dart';
import 'package:flutter_application_1/orgdatepicker.dart';
import 'package:flutter_application_1/radiobutton.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home:Datepic()
    );
  }
  
 
 
 }