import 'package:flutter/material.dart';
import 'package:fitness_pad/Widgets/profile_option.dart';

const fondo1 = Color.fromARGB(255, 235, 235, 235);
const boxShadow = [
  BoxShadow(blurRadius: 4, color: Colors.black26, offset: Offset(0, 4))
];

class ScreenProfile extends StatelessWidget {
  final String name;
  const ScreenProfile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
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
          ProfileOption(nombre: "Salir de mi Cuenta", icon: Icons.exit_to_app)
        ],
      )
    ]);
  }
}
