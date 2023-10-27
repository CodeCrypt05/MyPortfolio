// ignore_for_file: avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:motion/motion.dart';
import 'package:my_portfolio/presentation/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  double _verticalOffset = 0.0;
  bool _goingUp = true;

  /*This function is for floating widget */
  void _animateContainer() {
    if (_goingUp) {
      setState(() {
        _verticalOffset -=
            0.6; // Adjust this value to change the speed and distance.
        if (_verticalOffset < -10) {
          _goingUp = false;
        }
      });
    } else {
      setState(() {
        _verticalOffset +=
            0.6; // Adjust this value to change the speed and distance.
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
      mobile: (BuildContext context) => mobileContainer2(),
      tablet: (BuildContext context) => tabletContainer2(),
      desktop: (BuildContext context) => deskContainer2(),
    );
  }

/*=============== MOBILE CONTAINER 2 ============*/

  Widget mobileContainer2() {
    return Container(
      margin: const EdgeInsets.only(left: 60, right: 60, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'SKILLS',
                      style: TextStyle(
                        height: 1,
                        fontSize: w! / 22,
                        fontFamily: "geo",
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'The skills, tools and technologies \n I am really good at',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1,
                      fontSize: w! / 58,
                      fontFamily: "geo",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 26),
                  Motion.only(
                    child: Stack(children: [
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 2,
                          sigmaY: 2,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.6)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white.withOpacity(0.2),
                              Colors.white.withOpacity(0.1),
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 18),
                            // row 1
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      c,
                                      fit: BoxFit.fill,
                                      height: 34,
                                      width: 34,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'C',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      cplus,
                                      fit: BoxFit.fill,
                                      height: 34,
                                      width: 34,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'C++',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      java,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Java',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      dart,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Dart',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      html,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'HTML',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 38),
                            //  row 2
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      css,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'CSS',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      mysql,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'SQL',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      flutter,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Flutter',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      github,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'GitHub',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      git,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Git',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 38),
                            //  row 2
                            Container(
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        postman,
                                        fit: BoxFit.fill,
                                        height: 28,
                                        width: 28,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Postman',
                                        style: TextStyle(
                                            fontSize: w! / 60,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        figma,
                                        fit: BoxFit.fill,
                                        height: 28,
                                        width: 22,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Figma',
                                        style: TextStyle(
                                            fontSize: w! / 60,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        adobeXd,
                                        fit: BoxFit.fill,
                                        height: 28,
                                        width: 28,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'AdobeXD',
                                        style: TextStyle(
                                            fontSize: w! / 60,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 18),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

/*=========== TABLET CONTAINER 2 ===========*/

  Widget tabletContainer2() {
    return Container(
      margin: const EdgeInsets.only(left: 90, right: 90, top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: AnimatedContainer(
              duration: const Duration(
                  milliseconds: 200), // Adjust this duration as needed.
              transform: Matrix4.translationValues(0.0, _verticalOffset, 0.0),
              child: Container(
                height: 260,
                decoration: const BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage(astronaut_dab_illustration),
                      fit: BoxFit.contain),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'SKILLS',
                      style: TextStyle(
                        height: 1,
                        fontSize: w! / 22,
                        fontFamily: "geo",
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'The skills, tools and technologies \n I am really good at',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1,
                      fontSize: w! / 58,
                      fontFamily: "geo",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 26),

                  // ======================== Glass Container =====================
                  Motion.only(
                    child: Stack(children: [
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 2,
                          sigmaY: 2,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.6)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white.withOpacity(0.2),
                              Colors.white.withOpacity(0.1),
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 18),
                            // row 1
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      c,
                                      fit: BoxFit.fill,
                                      height: 34,
                                      width: 34,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'C',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      cplus,
                                      fit: BoxFit.fill,
                                      height: 34,
                                      width: 34,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'C++',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      java,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Java',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      dart,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Dart',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      html,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'HTML',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 38),
                            //  row 2
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      css,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'CSS',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      mysql,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'SQL',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      flutter,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Flutter',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      github,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'GitHub',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      git,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Git',
                                      style: TextStyle(
                                          fontSize: w! / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 38),
                            //  row 2
                            Container(
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        postman,
                                        fit: BoxFit.fill,
                                        height: 28,
                                        width: 28,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Postman',
                                        style: TextStyle(
                                            fontSize: w! / 60,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        figma,
                                        fit: BoxFit.fill,
                                        height: 28,
                                        width: 22,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Figma',
                                        style: TextStyle(
                                            fontSize: w! / 60,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        adobeXd,
                                        fit: BoxFit.fill,
                                        height: 28,
                                        width: 28,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'AdobeXD',
                                        style: TextStyle(
                                            fontSize: w! / 60,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 18),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

/*====== DESKTOP CONTAINER 2 ========*/
  Widget deskContainer2() {
    return Container(
      margin: const EdgeInsets.only(left: 160, right: 160, top: 90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: AnimatedContainer(
              duration: const Duration(
                  milliseconds: 200), // Adjust this duration as needed.
              transform: Matrix4.translationValues(0.0, _verticalOffset, 0.0),
              child: Container(
                height: 440,
                decoration: const BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage(astronaut_dab_illustration),
                      fit: BoxFit.contain),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'SKILLS',
                      style: TextStyle(
                        height: 1,
                        fontSize: w! / 22,
                        fontFamily: "geo",
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'The skills, tools and technologies \n I am really good at',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1,
                      fontSize: w! / 58,
                      fontFamily: "geo",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 36),

                  /*===================================================== */
                  Motion.only(
                    child: Stack(children: [
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 2,
                          sigmaY: 2,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 34, right: 34),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.6)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white.withOpacity(0.2),
                              Colors.white.withOpacity(0.1),
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 18),
                            // row 1
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      c,
                                      fit: BoxFit.fill,
                                      height: 50,
                                      width: 50,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'C',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      cplus,
                                      fit: BoxFit.fill,
                                      height: 50,
                                      width: 50,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'C++',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      java,
                                      fit: BoxFit.fill,
                                      height: 44,
                                      width: 44,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Java',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      dart,
                                      fit: BoxFit.fill,
                                      height: 44,
                                      width: 44,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Dart',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      html,
                                      fit: BoxFit.fill,
                                      height: 44,
                                      width: 44,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'HTML',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 38),
                            //  row 2
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      css,
                                      fit: BoxFit.fill,
                                      height: 44,
                                      width: 44,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'CSS',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      mysql,
                                      fit: BoxFit.fill,
                                      height: 44,
                                      width: 44,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'SQL',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      flutter,
                                      fit: BoxFit.fill,
                                      height: 44,
                                      width: 44,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Flutter',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      github,
                                      fit: BoxFit.fill,
                                      height: 44,
                                      width: 44,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'GitHub',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      git,
                                      fit: BoxFit.fill,
                                      height: 44,
                                      width: 44,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Git',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 38),
                            //  row 2
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      postman,
                                      fit: BoxFit.fill,
                                      height: 40,
                                      width: 40,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Postman',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      figma,
                                      fit: BoxFit.fill,
                                      height: 40,
                                      width: 34,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Figma',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      adobeXd,
                                      fit: BoxFit.fill,
                                      height: 40,
                                      width: 40,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'AdobeXD',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 18),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
