import 'package:flutter/material.dart';
import 'package:fitness_pad/screens/rutine.dart';

class Cronometer extends StatefulWidget {
  const Cronometer({super.key});

  @override
  State<Cronometer> createState() => _CronometerState();
}

class _CronometerState extends State<Cronometer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("adios"),
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
