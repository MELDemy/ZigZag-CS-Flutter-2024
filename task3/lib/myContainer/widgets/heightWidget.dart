import 'package:flutter/material.dart';
import 'package:task3/myContainer/myContainer.dart';


class HeightWidget extends StatefulWidget {
  const HeightWidget({super.key});

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {

  String height="190";
  @override
  Widget build(BuildContext context) {
    return myContainer(
      contains: Center(
        child: Column(
          children: [
            MyText("Height"),
            MyText('${height}'),
            Slider(
                value: double.parse(height),
                max: 250,
                label: height,
                activeColor: Colors.black,
                onChanged:(double value){
                  setState(() {
                    height=value.round().toString();
                  });
            }),
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
