import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fitness_pad/screens/training.dart';
import 'package:fitness_pad/screens/cronometer.dart';

bool meche = true;

class Rutine extends StatefulWidget {
  const Rutine({super.key});

  @override
  State<Rutine> createState() => _RutineState();
}

class _RutineState extends State<Rutine> {
  bool view = true;
  @override
  Widget build(BuildContext context) {
    setState(() {
      if (meche == false) {
        print("hellooo froom");
      } else {
        print("goodbye");
      }
      view = meche;
    });
    return ListView(
      children: [view ? Trainning() : Cronometer()],
    );
  }
}
