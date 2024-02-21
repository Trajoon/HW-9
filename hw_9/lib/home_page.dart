import 'package:flutter/material.dart';
import 'package:hw_9/display_screen.dart';
import 'package:hw_9/widgets/games_widget.dart';
import 'package:hw_9/widgets/listview.dart';
import 'package:hw_9/widgets/search_field.dart';

// Home Page Widget
class HomePage extends StatelessWidget {
  // Constructor for HomePage
  const HomePage({super.key});

  // Build method for rendering the widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Main container for the entire screen
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // Decoration for the background image and border radius
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/unsplash.png"),
            fit: BoxFit.fill,
          ),
          color: Color(0xff151515),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            // SearchField Widget
            const SearchField(),
            
            // CategoriesFilter Widget
            const CategoriesFilter(),
            
            // Padding and main content area
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  
                  // Row containing game containers
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // InkWell for making the container tappable
                      InkWell(
                        onTap: () {
                          // Navigate to the Display screen
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Display()));
                        },
                        child: const GameContainer(
                          listOfColor: [
                            Color.fromRGBO(178, 45, 133, 0),
                            Color(0xffC90085)
                          ],
                          name: "Cluth World",
                          price: 16.50,
                          image: 'image/image2.png',
                        ),
                      ),
                      
                      // Second GameContainer
                      const GameContainer(
                        listOfColor: [
                          Color.fromRGBO(159, 175, 62, 0),
                          Color(0xffD2EC34)
                        ],
                        name: "Cyber Punk",
                        price: 21.10,
                        image: "image/image5.png",
                      )
                    ],
                  ),
                  
                  const SizedBox(
                    height: 20,
                  ),
                  
                  // Another row of GameContainers
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GameContainer(
                        listOfColor: [
                          Color.fromRGBO(61, 129, 100, 0),
                          Color(0xff52FFB6)
                        ],
                        name: "Just Cause",
                        price: 18.10,
                        image: "image/image4.png",
                        w: 177,
                        h: 230,
                      ),
                      GameContainer(
                        listOfColor: [
                          Color.fromRGBO(42, 80, 37, 0),
                          Color(0xffFF0F00)
                        ],
                        name: "Price Combat",
                        price: 11.10,
                        image: "image/image1.png",
                      ),
                    ],
                  ),
                  
                  const SizedBox(
                    height: 10,
                  ),
                  
                  // Another row of GameContainers
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GameContainer(
                        listOfColor: [
                          Color.fromRGBO(255, 184, 0, 0),
                          Color(0xffFFB800)
                        ],
                        name: "Ninja Samurai",
                        price: 13.50,
                        image: "image/image3.png",
                      ),
                      GameContainer(
                        listOfColor: [
                          Color.fromRGBO(0, 194, 255, 0),
                          Color(0xff00C2FF)
                        ],
                        name: "Soldier Strip",
                        price: 19.10,
                        image: "image/image6.png",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
