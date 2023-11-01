import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:stroke_text/stroke_text.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 90, right: 90, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // first line of introduction
              Row(
                children: [
                  Text(
                    'Hi!',
                    style: TextStyle(
                      height: 0.08,
                      fontSize: w! / 20,
                      fontFamily: "geo",
                      color: Colors.white,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    margin: const EdgeInsets.only(bottom: 18),
                    width: w! / 18,
                    height: 64,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/gif/waving_hand.gif"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "I'm",
                    style: TextStyle(
                      fontSize: w! / 20,
                      fontFamily: "geo",
                      color: Colors.white,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              /*second line of introduction*/
              /* Text Stroke Effect */
              Container(
                margin: const EdgeInsets.only(left: 2),
                child: StrokeText(
                  text: 'Vaibhav.',
                  textStyle: TextStyle(
                    height: 0.6,
                    fontSize: w! / 12,
                    fontFamily: "geo",
                    color: Colors.black,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w800,
                  ),
                  strokeColor: Colors.white,
                  strokeWidth: 2,
                ),
              ),
              const SizedBox(height: 26),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/gif/robot.gif"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      height: 0.2,
                      fontSize: w! / 50,
                      fontFamily: "geo",
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/gif/clown_face.gif"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'UI Designer',
                    style: TextStyle(
                      height: 0.2,
                      fontSize: w! / 50,
                      fontFamily: "geo",
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: 480,
              decoration: const BoxDecoration(
                // color: Colors.amber,
                image: DecorationImage(
                    alignment: Alignment.centerRight,
                    image: AssetImage(astronout_earth_illustration),
                    fit: BoxFit.contain),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
