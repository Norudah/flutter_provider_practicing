import 'package:flutter/material.dart';

import 'components/CustomContainer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String code = "Top secret code";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Testing provider"),
        ),
        body: Level1(),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(child: Level2(), color: Colors.yellow);
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CustomContainer(
        child: Level3(),
        color: Colors.orange,
      );
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CustomContainer(
        child: Text("Grab the data here without 'prop drilling' through the previous levels"),
        color: Colors.red,
      );
}
