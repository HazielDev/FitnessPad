import 'package:flutter/material.dart';
import 'package:fitness_pad/pages/material.dart';
import 'package:fitness_pad/Widgets/crousel.dart';
import 'package:fitness_pad/Widgets/weekly.dart';
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
          ListView(children: [
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
          ]),
          Rutine(),
          ListView(
            children: const [
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text("Mis resultados de hoy")
                ],
              )
            ],
          ),
          ListView(children: [
            Column(
              children: [
                const SizedBox(height: 35.0),
                Container(
                  height: 140,
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(10.0, 20, 10.0, 20.0),
                  decoration: BoxDecoration(
                      color: fondo1,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: boxShadow),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                        width: double.infinity,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            margin: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.red),
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              const Text(
                                "Fitness Prinicipiante",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Se unío el 5 de Abril",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w600),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                ProfileOption(nombre: "Editar", icon: Icons.edit),
                ProfileOption(nombre: "Mis preferencias", icon: Icons.pages),
                ProfileOption(nombre: "Invitar Amigos", icon: Icons.person_add),
                ProfileOption(
                    nombre: "Salir de mi Cuenta", icon: Icons.exit_to_app)
              ],
            )
          ])
        ]),
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final String nombre;
  final IconData icon;
  const ProfileOption({super.key, required this.nombre, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
      decoration: BoxDecoration(
          color: fondo1,
          boxShadow: boxShadow,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  nombre,
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Container(
              width: 50,
              child: Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}

class BannerPlayCard extends StatefulWidget {
  const BannerPlayCard({super.key});

  @override
  State<BannerPlayCard> createState() => _BannerPlayCardState();
}

class _BannerPlayCardState extends State<BannerPlayCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
            visible: isVisible,
            child: Column(
              children: [
                PlayCard(
                  setMessage: (_message) {
                    isVisible = _message;
                    print("No hay chevecha");
                    return setState(() {});
                  },
                ),
                PlayCard(setMessage: () {})
              ],
            ))
      ],
    );
  }
}

class PlayCard extends StatelessWidget {
  final Function setMessage;
  const PlayCard({super.key, required this.setMessage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print("Cervesa Cristal");
          isVisible = false;
          setMessage(true);
        },
        child: Container(
          height: 100,
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(color: Colors.red),
        ));
  }
}
