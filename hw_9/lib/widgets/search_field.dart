import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 270,
                    height: 55,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5.5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5.5)),
                        hintText: "Search",
                        hintStyle: const TextStyle(color: Color(0xffFFFFFF)),
                        filled: true,
                        fillColor: const Color(0xff2A2828),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'icon/icons_search.svg',
                            width: 27.77,
                            height: 27.77,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 55.54,
                    height: 55.54,
                    decoration: BoxDecoration(
                       // gradient: LinearGradient(
                       // begin: Alignment.topLeft,
                       // end: Alignment.bottomRight,
                       // colors: [
                       //  Color(0xff2A2828).withOpacity(0.15),
                       //  Color(0xffFFFFFF).withOpacity(0.15),
                       // ]),
                        color: const Color(0xff2A2828),
                        borderRadius: BorderRadius.circular(5.5)),
                        child: Center(child: Image.asset('image/Notification.png')),
                  )
                ],
              ),
            ],
          ),
        );
  }
}