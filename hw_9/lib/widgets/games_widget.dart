import 'package:flutter/material.dart';

class GameContainer extends StatelessWidget {
  const GameContainer(
      {super.key,
      required this.listOfColor,
      required this.image,
      required this.name,
      required this.price,
      this.w,
      this.h});

  final List<Color> listOfColor;
  final String image;
  final String name;
  final double price;
  final double? w;
  final double? h;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 167.77,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                gradient: LinearGradient(
                    colors: listOfColor,
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter),
              ),
            ),
            Positioned(
                top: -15,
                child: Image.asset(
                  image, width: w, height: h,
                )),
            Positioned(
                bottom: 40,
                left: 30,
                child: Text(
                  name,
                  style: const TextStyle(
                      fontFamily: 'Goldman',
                      fontSize: 18.50,
                      color: Colors.white),
                )),
            Positioned(
                bottom: 20,
                left: 30,
                child: Text(
                  "\$$price",
                  style: const TextStyle(
                      fontFamily: 'Goldman',
                      fontSize: 14,
                      color: Color(0xffFBFF49)),
                ))
          ],
        )
      ],
    );
  }
}
