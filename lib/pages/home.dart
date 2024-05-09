import 'package:fitness_pad/screens/mainpage.dart';
import 'package:fitness_pad/screens/profile.dart';
import 'package:fitness_pad/screens/resultados.dart';
import 'package:flutter/material.dart';
import 'package:fitness_pad/screens/rutine.dart';

const fondo1 = Color.fromARGB(255, 235, 235, 235);
const boxShadow = [
  BoxShadow(blurRadius: 4, color: Colors.black26, offset: Offset(0, 4))
];

bool isVisible = true;

class HomePage extends StatelessWidget {
  final String name;
  const HomePage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    // const textStyle = TextStyle(fontSize: 11, color: Colors.grey);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, -1),
                  blurRadius: 4.0),
            ]),
            child: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home, color: Colors.red),
                  text: "Inicio",
                ),
                Tab(
                  icon: Icon(Icons.sports_gymnastics_sharp, color: Colors.red),
                  text: "Rutinas",
                ),
                Tab(
                  icon: Icon(Icons.stacked_line_chart, color: Colors.red),
                  text: "Resultados",
                ),
                Tab(
                  icon: Icon(Icons.person, color: Colors.red),
                  text: "Perfil",
                )
              ],
              indicatorColor: Colors.orange,
              labelColor: Colors.orange,
              labelStyle: TextStyle(
                  fontSize: 11.0,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            )),
        body: TabBarView(children: [
          ScreenMainPage(name: name),
          Rutine(),
          ScreenResultados(),
          ScreenProfile(name: name)
        ]),
      ),
    );
  }
}
