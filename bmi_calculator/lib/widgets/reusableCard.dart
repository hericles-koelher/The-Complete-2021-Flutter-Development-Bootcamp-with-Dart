import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final backgroundColor;
  final Widget child;
  final int flex;

  ReusableCard({@required this.backgroundColor, this.child, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          color: backgroundColor,
          child: child,
        ),
      ),
    );
  }
}
