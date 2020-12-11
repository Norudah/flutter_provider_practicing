import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final Color color;

  const CustomContainer({@required this.child, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      width: 300,
      height: 300,
      color: color,
      child: Center(child: child),
    );
  }
}
