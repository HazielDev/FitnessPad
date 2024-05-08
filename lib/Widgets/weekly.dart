import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class WeeklyCal extends StatelessWidget {
  const WeeklyCal({super.key});

  @override
  Widget build(BuildContext context) {
    const fondo1 = Color.fromARGB(255, 235, 235, 235);
    const boxShadow = [
      BoxShadow(blurRadius: 4, color: Colors.black26, offset: Offset(0, 4))
    ];

    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          color: fondo1,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: boxShadow),
      margin: const EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          StatBloq(
            cal: 10,
            dia: "Lunes",
            porc: 0.1,
          ),
          StatBloq(
            cal: 600,
            dia: "Martes",
            porc: 0.6,
          ),
          StatBloq(
            cal: 900,
            dia: "Miercoles",
            porc: 0.9,
          ),
          StatBloq(
            cal: 900,
            dia: "Jueves",
            porc: 0.9,
          ),
          StatBloq(
            cal: 600,
            dia: "Viernes",
            porc: 0.6,
          ),
          StatBloq(
            cal: 1200,
            dia: "Sabado",
            porc: 1.0,
          ),
        ],
      ),
    );
  }
}

class StatBloq extends StatelessWidget {
  final int cal;
  final String dia;
  final double porc;

  const StatBloq(
      {super.key, required this.cal, required this.dia, required this.porc});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dia,
              style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            CircularPercentIndicator(
              radius: 20,
              center: Text(
                "$cal",
                style: const TextStyle(fontSize: 10),
              ),
              progressColor: Colors.red,
              percent: porc,
            )
          ],
        ));
  }
}
