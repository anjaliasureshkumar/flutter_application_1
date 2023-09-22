import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedGender = 'male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Radio(
                value: 'male',
                groupValue:_selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value!;
                  });
                }, ),
                title: const Text('male'),
            ),
            ListTile(
              leading: Radio(
                value: 'female',
                groupValue:_selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value!; 
              });
            },
        ),
        title: const Text('female'),
      ),
      const SizedBox(height: 25),
          ],
       )),
    );
  }
}