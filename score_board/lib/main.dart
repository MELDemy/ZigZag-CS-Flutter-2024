import 'package:flutter/material.dart';
import 'package:score_board/score_Widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ScoreBoard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Scoreboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String? winner;
    score_widget team1_Widget = score_widget(teamName: "Team 1");
    score_widget team2_Widget = score_widget(teamName: "Team 2");

/* Trying to Show the winner name at the top
    update() {
      setState(() {
        team1_Widget.score > team2_Widget.score
            ? winner = team1_Widget.teamName
            : winner = team2_Widget.teamName;
      });
    }
*/

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (winner != null) Text("Winner is $winner"),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                team1_Widget,
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: VerticalDivider(
                    color: Colors.blue,
                    thickness: 1,
                  ),
                ),
                team2_Widget,
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                team1_Widget.score = 0;
                team2_Widget.score = 0;
              });
            },
            icon: Icon(Icons.restart_alt),
            label: Text('RESET'),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
