import 'package:flutter/material.dart';

class score_widget extends StatefulWidget {
  String teamName;
  score_widget({super.key, required this.teamName});

  @override
  State<score_widget> createState() => _score_widgetState(teamName);
}

class _score_widgetState extends State<score_widget> {
  int score=0;
  late String teamName;
  _score_widgetState(this.teamName);


  Widget Score_button(int increment){
    return ElevatedButton(
        onPressed: (){
          setState(() {
            score+=increment;
          });
        },
        child: Text('Add $increment point')
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$teamName',
          style: TextStyle(
              fontSize:30
          ),
        ),
        Text(
          '$score',
          style: TextStyle(
            fontSize: 30
          ),
        ),
        Score_button(1),
        Score_button(2),
        Score_button(3),
      ],
    );
  }
}

