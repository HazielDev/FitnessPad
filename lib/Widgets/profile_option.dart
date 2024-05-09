import 'package:flutter/material.dart';

const fondo1 = Color.fromARGB(255, 235, 235, 235);
const boxShadow = [
  BoxShadow(blurRadius: 4, color: Colors.black26, offset: Offset(0, 4))
];

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
