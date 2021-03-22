// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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

var agegroup = Container(
    child: Column(children: [
  Container(
      height: 30,
      child: Text("Age Group", style: TextStyle(fontSize: h1FontSize))),
  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
    Icon(Icons.arrow_back),
    Icon(Icons.arrow_left),
    Text("18", style: TextStyle(fontSize: 20)),
    Icon(Icons.arrow_right),
    Icon(Icons.arrow_forward),
  ]),
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
