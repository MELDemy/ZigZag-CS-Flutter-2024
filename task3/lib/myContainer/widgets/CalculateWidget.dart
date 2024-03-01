import 'package:flutter/material.dart';
import 'package:task3/DataPage.dart';
import 'package:task3/Home.dart';
import 'package:task3/myContainer/myContainer.dart';

class CalculateWidget extends StatefulWidget {
  const CalculateWidget({super.key});

  @override
  State<CalculateWidget> createState() => _CalculateWidgetState();
}

class _CalculateWidgetState extends State<CalculateWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Calculate"),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green[200],
          foregroundColor: Colors.black,
          textStyle: TextStyle(
              fontSize: 50
          )
      ),
      onPressed: (){
        Navigator.pushReplacement(context,MaterialPageRoute<void>(
          builder: (BuildContext context) => DataPage(),
        ),);
      },
    );
  }
}
