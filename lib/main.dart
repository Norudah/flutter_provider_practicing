import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/CustomContainer.dart';

import 'package:flutter_provider_practicing/models/SecretData.dart';

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
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SecretData(),
      child: CustomContainer(
        color: Colors.red,
        child: Consumer<SecretData>(
          builder: (context, data, child) {
            return Text(data.data);
          },
        ),
      ),
    );
  }
}
