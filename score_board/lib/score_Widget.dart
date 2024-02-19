import 'package:flutter/material.dart';

class score_widget extends StatefulWidget {
  String teamName;
  int score=0;
  score_widget({super.key, required this.teamName});

  @override
  State<score_widget> createState() => _score_widgetState();
}

class _score_widgetState extends State<score_widget> {

  Widget Score_button(int increment){
    return ElevatedButton(
        onPressed: (){
          setState(() {
            widget.score+=increment;
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
          '${widget.teamName}',
          style: TextStyle(
              fontSize:30
          ),
        ),
        Text(
          '${widget.score}',
          style: TextStyle(
            fontSize: 30
          ),
        ),
        Score_button(1),
        Score_button(2),
        Score_button(3),
        SizedBox(height: 20,),
        ElevatedButton.icon(
            onPressed: (){
              setState(() {
                widget.score=0;
              });
            },
          icon: Icon(Icons.restart_alt),
          label: Text('RESET'),
        )
      ],
    );
  }
}

