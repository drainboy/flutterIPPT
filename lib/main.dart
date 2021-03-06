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

double h1FontSize = 25.0;

station(image, name, count) => Column(children: [
      Container(
          padding: const EdgeInsets.all(10),
          child: Text(name,
              style: TextStyle(
                  decoration: TextDecoration.underline, fontSize: h1FontSize))),
      Container(
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(12)),
          child: Row(children: [
            Expanded(
                flex: 1,
                child: Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.network(image, height: 100))),
            Expanded(
                flex: 2,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.do_not_disturb_on),
                            Text(count, style: TextStyle(fontSize: 45)),
                            Icon(Icons.add_circle)
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Text("Points: "), Text("00")])
                    ]))
          ]))
    ]);

class ItemCounter extends StatefulWidget {
  final String name;
  int counter;

  ItemCounter({this.name, this.counter});

  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  void _increment() {
    setState(() {
      if (widget.counter < 60) {
        widget.counter++;
      }
    });
  }

  void _decrement() {
    setState(() {
      if (widget.counter > 16) {
        widget.counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      IconButton(icon: Icon(Icons.arrow_left), onPressed: _decrement),
      Text("${widget.counter}", style: TextStyle(fontSize: 20)),
      IconButton(icon: Icon(Icons.arrow_right), onPressed: _increment),
    ]);
  }
}

var agegroup = Container(
    child: Column(children: [
  Container(
      height: 30,
      child: Text("Age Group", style: TextStyle(fontSize: h1FontSize))),
  ItemCounter(name: "ageGroup", counter: 18)
]));

var reward = Container(
    padding: EdgeInsets.only(top: 40),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Image.network("https://image.flaticon.com/icons/png/512/3176/3176272.png",
          height: 130),
      Text("100", style: TextStyle(fontSize: 60))
    ]));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IPPT Calculator",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("IPPT Calculator"),
          ),
          body: ListView(padding: const EdgeInsets.all(8), children: [
            agegroup,
            Divider(),
            station("https://image.flaticon.com/icons/png/512/2548/2548530.png",
                "Push up", "00"),
            station("https://image.flaticon.com/icons/png/512/2548/2548429.png",
                "Sit up", "00"),
            station("https://image.flaticon.com/icons/png/512/2554/2554042.png",
                "2.4km Run", "00:00"),
            reward
          ])),
    );
  }
}
