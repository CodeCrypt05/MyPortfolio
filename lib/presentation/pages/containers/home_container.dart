import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stroke_text/stroke_text.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      // mobile: ,
      // tablet: ,
      desktop: (BuildContext context) => DesktopContainer1(),
    );
  }

  Widget DesktopContainer1() {
    return Container(
      margin: const EdgeInsets.only(left: 160, right: 160, top: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // first line of introduction
                Container(
                  child: Row(
                    children: [
                      const Text(
                        'Hi!',
                        style: TextStyle(
                          height: 0.2,
                          fontSize: 78,
                          fontFamily: "geo",
                          color: Colors.white,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 14),
                      Container(
                        margin: const EdgeInsets.only(bottom: 18),
                        width: 84,
                        height: 84,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/gif/waving_hand.gif"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(width: 14),
                      Text(
                        "I'm",
                        style: TextStyle(
                          fontSize: 78,
                          fontFamily: "geo",
                          color: Colors.white,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                // second line of introduction
                Container(
                  margin: EdgeInsets.only(left: 4),
                  child: const StrokeText(
                    text: 'Vaibhav.',
                    textStyle: TextStyle(
                      height: 1,
                      fontSize: 118,
                      fontFamily: "geo",
                      color: Colors.black,
                      letterSpacing: 4,
                      fontWeight: FontWeight.w800,
                    ),
                    strokeColor: Colors.white,
                    strokeWidth: 2,
                  ),
                ),
                SizedBox(height: 12),
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
                    const Text(
                      'Flutter Developer',
                      style: TextStyle(
                        height: 0.2,
                        fontSize: 38,
                        fontFamily: "geo",
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
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
                    const Text(
                      'UI Designer',
                      style: TextStyle(
                        height: 0.2,
                        fontSize: 38,
                        fontFamily: "geo",
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/main_poster_img.png'))),
            ),
          ],
        ),
      ),
    );
  }
}
