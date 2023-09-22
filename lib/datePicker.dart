import 'package:flutter/material.dart';

class Datepic extends StatefulWidget {
  const Datepic({super.key});

  @override
  State<Datepic> createState() => _DatepicState();
}

class _DatepicState extends State<Datepic> {
  DateTime? nowDate ;
  Future<void>_dateselect(BuildContext context)async{
    final DateTime? pickdate = await showDatePicker(
    context: context, initialDate: DateTime.now(), 
    firstDate: DateTime(2001), lastDate: DateTime(2025));
    if(pickdate !=null && pickdate != nowDate )
    setState(() {
      nowDate = pickdate;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("datepicker"),
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  nowDate !=null
                  ? nowDate!.toString()
                  :"no date selected"
                ),
                ElevatedButton(onPressed: (){
                  _dateselect(context);
                }, child: Text("select date"))
              ],
            ),
          ),
    );
  }
}