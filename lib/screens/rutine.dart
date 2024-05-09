import 'package:flutter/material.dart';
import 'package:fitness_pad/screens/training.dart';
import 'package:fitness_pad/screens/cronometer.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
    return ListView(
      children: [
        SizedBox(
          height: 30,
          width: double.infinity,
        ),
        Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rutina Actual:",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Biceps 1",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )),
            SizedBox(
              height: 100,
            ),
            CircularPercentIndicator(
              radius: 90,
              center: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "1:00",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              progressColor: Colors.red,
              percent: 1.0,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mancuernas",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Levanta las pesas con un agarre firme, mantén una postura correcta y respira adecuadamente mientras realizas los ejercicios.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 70,
                          height: 40,
                          child: Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 70,
                          height: 40,
                          color: Colors.red,
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 70,
                          height: 40,
                          child: Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )),
                        )
                      ],
                    )
                  ],
                ))
          ],
        )
      ],
    );
  }
}
