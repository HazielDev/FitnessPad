import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselRutins extends StatelessWidget {
  const CarouselRutins({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: const [
          BannerCard(
            nombre: "Biceps Challenge",
            rate: "4.8",
            cant: "7",
            people: "2,580",
            banImg: "assets/images/pesas_1.jpg",
          ),
          BannerCard(
            nombre: "Biceps Challenge 2",
            rate: "4.7",
            cant: "12",
            people: "1,080",
            banImg: "assets/images/pesas_2.jpg",
          ),
          BannerCard(
            nombre: "Pilates Way",
            rate: "4.9",
            cant: "5",
            people: "6,580",
            banImg: "assets/images/pilates_1.jpg",
          ),
          BannerCard(
              nombre: "Cross-Fit Extreme",
              rate: "4.3",
              cant: "9",
              people: "6,800",
              banImg: "assets/images/crossfit_1.jpg"),
          BannerCard(
              nombre: "Biceps Challenge 3",
              rate: "4.1",
              cant: "13",
              people: "890",
              banImg: "assets/images/pesas_3.jpg"),
          BannerCard(
              nombre: "Cross-Fit Beginner",
              rate: "4.9",
              cant: "8",
              people: "8,907",
              banImg: "assets/images/crossfit_2.jpg"),
          BannerCard(
              nombre: "Full Body Challenge",
              rate: "4.7",
              cant: "15",
              people: "4,638",
              banImg: "assets/images/pesas_4.jpg")
        ],
        options: CarouselOptions(
          height: 170,
        ));
  }
}

class BannerCard extends StatelessWidget {
  final String nombre, rate, cant, people, banImg;
  const BannerCard(
      {super.key,
      required this.nombre,
      required this.rate,
      required this.cant,
      required this.people,
      required this.banImg});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(banImg), fit: BoxFit.cover)),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black12, Colors.black87],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nombre,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.sports_gymnastics,
                        size: 18,
                        color: Colors.white,
                      ),
                      Text(
                        "$cant Ejercicios",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                      const Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.white,
                      ),
                      Text(
                        "$rate ($people)",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
