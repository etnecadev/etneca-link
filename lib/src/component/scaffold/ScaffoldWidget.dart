import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  final Widget child;
  ScaffoldWidget({
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(child: Text("Leading")),
        title: const Text('AppBar Demo'),
        actions: <Widget>[Center(child: Text("Actions"))],
      ),
      body: child,
    );
  }
}
