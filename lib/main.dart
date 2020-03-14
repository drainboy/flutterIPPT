import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var gender = "male";
  num age = 34;
  num numOfPushUps = 40;
  num numOfSitUps = 40;
  String runTime = "11:00";
  int score = 0;
  
  /*score += pointsForPushUps(age, numOfPushUps);
  score += pointsForSitUps(age, numOfSitUps);
  score += pointsForRunning(age, runTime);
  print(pointsForPushUps(age, numOfPushUps));
  print(pointsForSitUps(age, numOfSitUps));
  print(pointsForRunning(age, runTime));
  print("You scored " + score.toString());*/

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: MyHomePage(title: 'IPPT Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
