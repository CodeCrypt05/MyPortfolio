import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stroke_text/stroke_text.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  double _verticalOffset = 0.0;
  bool _goingUp = true;

  /*This function is for floating widget */
  void _animateContainer() {
    if (_goingUp) {
      setState(() {
        _verticalOffset -=
            0.4; // Adjust this value to change the speed and distance.
        if (_verticalOffset < -10) {
          _goingUp = false;
        }
      });
    } else {
      setState(() {
        _verticalOffset +=
            0.4; // Adjust this value to change the speed and distance.
        if (_verticalOffset > 10) {
          _goingUp = true;
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // Start the animation when the widget is initialized.
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(const Duration(milliseconds: 0), () {
      if (mounted) {
        _animateContainer();
        _startAnimation();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileContainer1(),
      tablet: (BuildContext context) => TabletContainer1(),
      desktop: (BuildContext context) => DesktopContainer1(),
    );
  }

  /*========== Mobile View ============*/
  Widget MobileContainer1() {
    return Container(
      margin: const EdgeInsets.only(left: 60, right: 60, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // first line of introduction
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hi!',
                style: TextStyle(
                  fontSize: w! / 20,
                  fontFamily: "geo",
                  color: Colors.white,
                  letterSpacing: 0.4,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                margin: const EdgeInsets.only(bottom: 6),
                width: w! / 18,
                height: 30,
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
            margin: EdgeInsets.only(top: 12),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
                  fontSize: w! / 34,
                  fontFamily: "geo",
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
                  fontSize: w! / 34,
                  fontFamily: "geo",
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 36),
          AnimatedContainer(
            duration: const Duration(
                milliseconds: 200), // Adjust this duration as needed.
            transform: Matrix4.translationValues(0.0, _verticalOffset, 0.0),
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
                // color: Colors.amber,
                image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('assets/images/main_poster_img.png'),
                    fit: BoxFit.contain),
              ),
            ),
          ),
        ],
      ),

      /*float animation using 3rd party library */
      // WidgetAnimator(
      //   atRestEffect: WidgetRestingEffects.wave(),
      //   child: Container(
      //     height: 300,
      //     width: 300,
      //     decoration: const BoxDecoration(
      //       // color: Colors.amber,
      //       image: DecorationImage(
      //           // alignment: Alignment.centerRight,
      //           image: AssetImage('assets/images/main_poster_img.png'),
      //           fit: BoxFit.contain),
      //     ),
      //   ),
      // ),
    );
  }

  /*====== Tablet View =========*/
  Widget TabletContainer1() {
    return Container(
      margin: const EdgeInsets.only(left: 90, right: 90, top: 40),
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
              ),
              /*second line of introduction*/
              /* Text Stroke Effect */
              Container(
                margin: EdgeInsets.only(left: 2),
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

          /*float animation using 3rd party library */
          // WidgetAnimator(
          //   atRestEffect: WidgetRestingEffects.wave(),
          //   child: Container(
          //     height: 300,
          //     width: 300,
          //     decoration: const BoxDecoration(
          //       // color: Colors.amber,
          //       image: DecorationImage(
          //           // alignment: Alignment.centerRight,
          //           image: AssetImage('assets/images/main_poster_img.png'),
          //           fit: BoxFit.contain),
          //     ),
          //   ),
          // ),

          Expanded(
            child: AnimatedContainer(
              duration: const Duration(
                  milliseconds: 200), // Adjust this duration as needed.
              transform: Matrix4.translationValues(0.0, _verticalOffset, 0.0),
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      alignment: Alignment.centerRight,
                      image: AssetImage('assets/images/main_poster_img.png'),
                      fit: BoxFit.contain),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /*====== Desktop View ==========*/
  Widget DesktopContainer1() {
    return Container(
      margin: const EdgeInsets.only(left: 160, right: 160, top: 40),
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

              // Container(
              //   margin: const EdgeInsets.only(left: 4),
              //   child: TextAnimator(
              //     'Vaibhav.',
              //     style: const TextStyle(
              //       height: 1,
              //       fontSize: 118,
              //       fontFamily: "geo",
              //       color: Color.fromARGB(255, 234, 234, 234),
              //       letterSpacing: 4,
              //       fontWeight: FontWeight.w800,
              //     ),
              //     atRestEffect:
              //         WidgetRestingEffects.pulse(effectStrength: 0.6),
              //     incomingEffect:
              //         WidgetTransitionEffects.incomingSlideInFromTop(
              //             blur: const Offset(0, 20), scale: 2),
              //   ),
              // ),

              /* Text Stroke Effect */
              Container(
                margin: EdgeInsets.only(left: 4),
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

          // WidgetAnimator(
          //   atRestEffect: WidgetRestingEffects.wave(),
          //   child: Container(
          //     height: 500,
          //     width: 500,
          //     decoration: const BoxDecoration(
          //       // color: Colors.amber,
          //       image: DecorationImage(
          //           // alignment: Alignment.centerRight,
          //           image: AssetImage('assets/images/main_poster_img.png'),
          //           fit: BoxFit.contain),
          //     ),
          //   ),
          // ),

          /* manual float aimation */
          Expanded(
            child: AnimatedContainer(
              duration: const Duration(
                  milliseconds: 200), // Adjust this duration as needed.
              transform: Matrix4.translationValues(0.0, _verticalOffset, 0.0),
              child: Container(
                height: 500,
                decoration: const BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      alignment: Alignment.centerRight,
                      image: AssetImage(astronout_earth_illustration),
                      fit: BoxFit.contain),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
