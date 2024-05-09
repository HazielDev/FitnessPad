import 'package:flutter/material.dart';
import 'package:fitness_pad/Widgets/crousel.dart';
import 'package:fitness_pad/Widgets/weekly.dart';
import 'package:fitness_pad/pages/home.dart';
import 'package:fitness_pad/pages/material.dart';

class ScreenMainPage extends StatelessWidget {
  final String name;
  const ScreenMainPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "    ¡Buenos Días!",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey),
                ),
                Text(
                  "  $name",
                  style: const TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.w800),
                )
              ],
            ),
          ),
          Container(
              height: 150,
              width: double.infinity,
              clipBehavior: Clip.hardEdge,
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                  image: const DecorationImage(
                      image: AssetImage('assets/images/banner-img.jpg'),
                      fit: BoxFit.cover),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 4,
                        color: Colors.black26,
                        offset: Offset(0, 4))
                  ]),
              child: Container(
                color: Colors.black38,
                width: double.infinity,
                alignment: Alignment.center,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "¡El día de hoy hiciste 5 horas de ejercicios!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              )),
          WeeklyCal(),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10.0, 45, 10.0, 0.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Actividad de Hoy",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Ver más",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  )
                ],
              )),
          Container(
            //? CONT ACTIVIDAD DE HOY
            width: double.infinity,
            height: 200.0,
            margin: const EdgeInsets.fromLTRB(10.0, 20, 10.0, 20.0),
            padding: const EdgeInsets.fromLTRB(0, 5.0, 0, 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: fondo1,
                boxShadow: boxShadow),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                StatColumn(
                  value: 10,
                  title: "Bicep",
                ),
                StatColumn(
                  value: 10,
                  title: "Abs",
                ),
                StatColumn(
                  value: 10,
                  title: "Hombros",
                ),
                StatColumn(
                  value: 10,
                  title: "Gluteos",
                ),
                StatColumn(
                  value: 10,
                  title: "Pantorrilla",
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: const Row(children: [
              Text(
                "Rutinas Recomendadas",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ]),
          ),
          CarouselRutins(),
          const SizedBox(
            height: 40,
          )
        ],
      )
    ]);
  }
}
