import 'package:flutter/material.dart';
import 'package:task3/Home.dart';
import 'package:task3/myContainer/myContainer.dart';

class DataPage extends StatefulWidget {
  DataPage({super.key});
  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator"),centerTitle: true,),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Data",style: TextStyle(fontSize: 25),),
              textcontainer("Gender: "),
              textcontainer("Height: "),
              textcontainer("Weight: "),
              textcontainer("age: "),
              textcontainer("BMI: "),
            ],
          )
      ),
    );
  }

  Widget textcontainer(String text){
    return myContainer(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      contains: Text(text,
      style: TextStyle(
        fontSize: 18,
      ),
      ),
    );
  }
}
