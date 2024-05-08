import 'package:flutter/material.dart';
import 'package:fitness_pad/screens/rutine.dart';

class Trainning extends StatefulWidget {
  const Trainning({super.key});

  @override
  State<Trainning> createState() => _TrainningState();
}

class _TrainningState extends State<Trainning> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hola"),
        IconButton(
            onPressed: () {
              print("cheve");
              meche = false;
              setState(() {});
            },
            icon: Icon(Icons.block))
      ],
    );
  }
}
