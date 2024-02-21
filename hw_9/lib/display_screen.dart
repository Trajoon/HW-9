import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff151515),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
                width: double.infinity,
                height: 455,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                  gradient: LinearGradient(colors: [
                    Color(0xffFF0000),
                    Color(0xff151515),
                  ], stops: [
                    0.1,
                    0.4
                  ]),
                )),
            Positioned(
                right: -50,
                top: -50,
                child: Image.asset(
                    'image/agent-47-red-gun-hitman-absolution-wallpaper-preview-removebg-preview 1.png')),
            const Positioned(
              bottom: 0,
              right: 10,
              child: Text(
                "Hitman Absolution",
                style: TextStyle(
                    fontFamily: 'Goldman', fontSize: 38, color: Colors.white),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "2022",
                  style: TextStyle(
                      fontFamily: 'Goldman', fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset('image/Frame 481.png'),
                const SizedBox(
                  width: 10,
                ),
                Image.asset('image/Frame 482.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "about Game",
                  style: TextStyle(
                      fontFamily: 'Goldman',
                      fontSize: 18.50,
                      color: Colors.white),
                ),
                const Text(
                  "The original assassin is back! Betrayed by the Agency and hunted by the police, Agent 47 finds himself pursuing redemption in a corrupt and twisted world.",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Hitman: Absolution is a 2012 stealth video game developed by IO Interactive and published by Square Enix's European subsidiary. It is the fifth installment in the Hitman series and the sequel to 2006's Hitman: Blood Money.",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
   
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(250,50),
                          backgroundColor: const Color(0xffFF1010),
                          textStyle: const TextStyle(
                            fontFamily: 'Goldman',
                            fontSize: 18.50,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Buy", style: TextStyle(color: Colors.white),)),
                          const Column(
                            children: [
                              Text("\$18.00", style: TextStyle(
                      fontFamily: 'Goldman',
                      fontSize: 14,
                      color: Colors.white),),
                              Text("\$13.50",style: TextStyle(
                      fontFamily: 'Goldman',
                      fontSize: 19,
                      color: Color(0xffFBFF49)),),
                            ],
                          )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
