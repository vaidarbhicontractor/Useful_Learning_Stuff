import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Vx.purple100,
      body: "Welcome to Fluttering"
          .text
          .center
          .make()
          .p12()
          .card
          .zeroCircular
          .green300
          .make()
          .wh(200, 300)
          .centered(),
    ));
  }
}
