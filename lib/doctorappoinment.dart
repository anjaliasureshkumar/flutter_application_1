import 'package:flutter/material.dart';
class Doctorpage extends StatefulWidget {
  const Doctorpage({super.key});

  @override
  State<Doctorpage> createState() => _DoctorpageState();
}

class _DoctorpageState extends State<Doctorpage> {
  List dropDownListData = [
    {"title":"Dr.Sajan","value":"1",},
    {"title":"Dr.VikramSankar","value":"2",},
    {"title":"Dr.Poornima","value":"3",},
    {"title":"Dr.Ram Mohan","value":"4",},
  ];
  String defaultValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text("Doctor",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
        color: Colors.amberAccent),),
      ),
    );
    
  }
}