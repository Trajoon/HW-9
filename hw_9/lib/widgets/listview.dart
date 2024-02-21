import 'package:flutter/material.dart';

class CategoriesFilter extends StatefulWidget {
  const CategoriesFilter({super.key});

  @override
  State<CategoriesFilter> createState() => _CategoriesFilterState();
}

class _CategoriesFilterState extends State<CategoriesFilter> {
  List<String> categoriesFilter = [
    "Popular",
    "Trending",
    "New Launch",
    "Free Game"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Container(
        height: 30,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categoriesFilter.asMap().entries.map((entry) {
              var index = entry.key;
              var category = entry.value;
              var selectedIndex = 0;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Column(
                    children: [
                      Text(
                        category,
                        style:  TextStyle(
                            color: selectedIndex == index
                            ? Color(0xffDFFF1E)
                            : Color(0xff868686),
                            fontSize: 18,
                            fontFamily: 'InriaSans'),
                      ),
                      Container(
                        height: 2,
                        width: 60,
                        color: selectedIndex == index
                            ? Color(0xffDFFF1E)
                            : Colors.transparent,
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
