import 'package:flutter/material.dart';

class StatColumn extends StatelessWidget {
  final double value;
  final String title;
  const StatColumn({super.key, required this.value, required this.title});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 11, color: Colors.grey);
    const txtCmStyle = TextStyle(fontSize: 10, color: Colors.black54);
    const txtStat = TextStyle(fontSize: 11);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text("20", style: txtStat),
        Container(
          alignment: Alignment.bottomCenter,
          height: 140,
          width: 30,
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(5.0)),
          child: const Text(
            "Cm",
            style: txtCmStyle,
          ),
        ),
        Text(
          title,
          style: textStyle,
        )
      ],
    );
  }
}

class PlayCard extends StatelessWidget {
  const PlayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          height: 100,
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(color: Colors.red),
        ));
  }
}
