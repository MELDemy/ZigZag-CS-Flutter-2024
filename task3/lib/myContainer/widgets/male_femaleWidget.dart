import 'package:flutter/material.dart';
import 'package:task3/myContainer/myContainer.dart';

class Male_FemaleWidget extends StatefulWidget {
  Male_FemaleWidget({super.key,required this.gender,required this.genderIcon,
    this.padding=const EdgeInsets.symmetric(horizontal: 25)});

  String gender;
  IconData genderIcon = Icons.male;
  EdgeInsets padding;
  @override
  State<Male_FemaleWidget> createState() => _Male_FemaleWidgetState();
}

class _Male_FemaleWidgetState extends State<Male_FemaleWidget> {
  @override
  Widget build(BuildContext context) {
    return myContainer(
      padding: widget.padding,
        contains: Center(
          child: Column(
              children: [
                Icon(widget.genderIcon,size: 80,),
                MyText(widget.gender)
              ],
              ),
        ),
    );
  }
  Text MyText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 40
      ),
    );
  }
}
