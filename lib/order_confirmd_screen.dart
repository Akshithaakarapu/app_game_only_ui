import 'package:flutter/material.dart';

class Oreder_confimed_screen extends StatefulWidget {
  const Oreder_confimed_screen({super.key});

  @override
  State<Oreder_confimed_screen> createState() => _Oreder_confimed_screenState();
}

class _Oreder_confimed_screenState extends State<Oreder_confimed_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(alignment: Alignment.centerLeft,
              child: Image.asset("images/Joystick_right.png")),
            Image.asset("images/order_confimed.png",height: 608,width: 368,),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset("images/Joystick_left.png")),
          ],
        ),
      ),
    );
  }
}