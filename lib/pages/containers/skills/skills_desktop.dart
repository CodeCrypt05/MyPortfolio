import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:motion/motion.dart';
import 'package:my_portfolio/utils/constants.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 160, right: 160, top: 90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 560,
              decoration: const BoxDecoration(
                // color: Colors.amber,
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage(astronaut_dab_illustration),
                    fit: BoxFit.contain),
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
