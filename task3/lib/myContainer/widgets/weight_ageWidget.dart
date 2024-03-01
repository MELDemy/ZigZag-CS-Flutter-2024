import 'package:flutter/material.dart';
import 'package:task3/myContainer/myContainer.dart';

class weight_ageWidget extends StatefulWidget {
  weight_ageWidget({super.key,required this.type,this.padding=const EdgeInsets.symmetric(horizontal: 30)});

  String type;
  EdgeInsets? padding;

  @override
  State<weight_ageWidget> createState() => _weight_ageWidgetState();
}

class _weight_ageWidgetState extends State<weight_ageWidget> {
  int value =65;
  @override
  Widget build(BuildContext context) {
    return myContainer(
      padding: widget.padding,
        contains: Center(
          child: Column(
            children: [
              MyText(widget.type),
              MyText(value.toString()),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: (){
                      setState(() {value+=1;});
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: (){
                      setState(() {value-=1;});
                    },
                  ),
                ],
              )
            ],
          ),
        )
    );
  }

  Text MyText(String text){
    return Text(
      text,
      style: TextStyle(
          fontSize: 40
      ),
    );
  }
}
