import 'package:flutter/material.dart';

void main() {
  runApp(const Task1());
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text(
          'Profile View',
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 10, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/jajaja.jpg'),
                radius: 50,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Mahmoud ELDemerdash',
              style: TextStyle(color: Colors.yellow, fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'NickName',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'ELDemy',
              style: TextStyle(color: Colors.yellow, fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Age',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '19',
              style: TextStyle(color: Colors.yellow, fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Flutter Level',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Beginner',
              style: TextStyle(color: Colors.yellow, fontSize: 30),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}