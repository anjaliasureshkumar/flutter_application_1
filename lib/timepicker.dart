import 'dart:math';

import 'package:flutter/material.dart';

class Timepicker extends StatefulWidget {
  const Timepicker({super.key});

  @override
  State<Timepicker> createState() => _TimepickerState();
}

class _TimepickerState extends State<Timepicker> {
 TimeOfDay selectedTime = TimeOfDay.now();
 Future<void> _selectTime(BuildContext context) async
 {
  final TimeOfDay? pickedTime = await showTimePicker(
    context: context, 
    initialTime: selectedTime,
    );
    if (pickedTime !=null){
      setState(() {
        selectedTime = pickedTime;
      });
    }
 }
 @override
 Widget build(BuildContext context){
  return Scaffold(
    body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selected Time:${selectedTime.format(context)}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                 fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => _selectTime(context),
               child: const Text("Select Date"),
               ),
          ],
      )),
        ),
      );
     }
}