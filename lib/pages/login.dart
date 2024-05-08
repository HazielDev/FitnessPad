import 'package:fitness_pad/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

String name = "Nombre Aqui";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              index = double.parse(value.toString());
              setState(() {});
            },
            children: [
              Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                      width: double.infinity,
                    ),
                    const Image(
                      image: AssetImage('assets/images/logo.PNG'),
                      height: 110,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Image(image: AssetImage('assets/images/pilates.png')),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        height: 240,
                        width: double.infinity,
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Comienza a administrar tus ejercicios",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "tu compañero personalizado para alcanzar tus objetivos de fitness y bienestar. Diseñada para adaptarse a tu estilo de vida y necesidades individuales, nuestra aplicación te ofrece una experiencia única en la gestión de ejercicios, desde seguir rutinas predefinidas hasta crear tus propias rutinas personalizadas.",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                      width: double.infinity,
                    ),
                    const Image(
                      image: AssetImage('assets/images/logo.PNG'),
                      height: 110,
                    ),
                    const SizedBox(height: 20),
                    const Image(
                      image: AssetImage('assets/images/bike.png'),
                      height: 200,
                    ),
                    Container(
                        height: 240,
                        width: double.infinity,
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Comienza a administrar tus ejercicios",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "nuestra aplicación te ofrece herramientas integrales de seguimiento y registro para que puedas monitorizar tu progreso, registrar tus entrenamientos y celebrar tus logros. Ya sea que estés persiguiendo un objetivo a corto plazo o buscando un cambio de estilo de vida a largo plazo, estamos aquí para apoyarte en tu viaje hacia una versión más saludable y activa de ti mismo/a.",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                      width: double.infinity,
                    ),
                    const Image(
                      image: AssetImage('assets/images/logo.PNG'),
                      height: 110,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const LoginForm(),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (name == "") {
                            return;
                          }
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                        name: name,
                                      )));
                        },
                        child: const Text("Ingresar")),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              bottom: 90,
              left: 170,
              child: DotsIndicator(
                dotsCount: 3,
                position: index,
                decorator: const DotsDecorator(activeColor: Colors.red),
              ))
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Iniciar Sesión",
                  style: TextStyle(
                      fontSize: 19,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                ),
                TextFormField(
                  autocorrect: false,
                  decoration: const InputDecoration(
                      focusColor: Colors.red,
                      labelText: "Nombre Completo",
                      icon: Icon(Icons.person),
                      iconColor: Colors.red),
                  validator: (value) {
                    name = value ?? "Nombre Ejemplo";
                    return "";
                  },
                ),
                TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: "Contraseña",
                      icon: Icon(Icons.lock),
                      iconColor: Colors.red),
                )
              ],
            )));
  }
}
