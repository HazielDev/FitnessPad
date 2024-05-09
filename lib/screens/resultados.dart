import 'package:flutter/material.dart';

class ScreenResultados extends StatelessWidget {
  const ScreenResultados({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              width: double.infinity,
              child: Row(
                children: [
                  Text(
                    "Mis Resultados",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                  ),
                ],
              ),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
              child: Column(
                children: [
                  Text(
                    "Necesitas hacer alguna rutina para ver tu resumen :(",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
