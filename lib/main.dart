import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/CustomContainer.dart';

import 'package:flutter_provider_practicing/models/SecretData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String code = "Top secret code";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SecretData(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Consumer<SecretData>(
              builder: (context, secretData, child) {
                return Text(secretData.data);
              },
            ),
          ),
          body: Level1(),
        ),
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
    return CustomContainer(
      color: Colors.red,
      child: Column(
        children: [
          Consumer<SecretData>(builder: (context, ultraSecretDataOfDoom, child) {
            return TextField(
              onChanged: (value) {
                ultraSecretDataOfDoom.changeData(value);
              },
            );
          }),
          Consumer<SecretData>(
            builder: (context, data, child) {
              return Text(data.data);
            },
          ),
        ],
      ),
    );
  }
}
