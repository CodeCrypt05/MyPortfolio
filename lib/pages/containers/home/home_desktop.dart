import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:stroke_text/stroke_text.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 160, right: 160, top: 30),
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
                      height: 0.2,
                      fontSize: w! / 20,
                      fontFamily: "geo",
                      color: Colors.white,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 14),
                  Container(
                    margin: const EdgeInsets.only(bottom: 18),
                    width: w! / 20,
                    height: 84,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/gif/waving_hand.gif"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Text(
                    "I'm",
                    style: TextStyle(
                      fontSize: w! / 20,
                      fontFamily: "geo",
                      color: Colors.white,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              // second line of introduction
              /* Text Stroke Effect */
              Container(
                margin: const EdgeInsets.only(left: 4),
                child: StrokeText(
                  text: 'Vaibhav.',
                  textStyle: TextStyle(
                    height: 1,
                    fontSize: w! / 10,
                    fontFamily: "geo",
                    color: Colors.black,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w800,
                  ),
                  strokeColor: Colors.white,
                  strokeWidth: 4,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 14),
                    width: 38,
                    height: 38,
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
                      fontSize: w! / 40,
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
                    margin: const EdgeInsets.only(left: 14),
                    width: 38,
                    height: 38,
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
                      fontSize: w! / 40,
                      fontFamily: "geo",
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          /*float animation using 3rd party library */
          Expanded(
            child: Container(
              height: 540,
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
