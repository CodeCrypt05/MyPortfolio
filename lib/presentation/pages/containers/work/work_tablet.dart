import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/utils/constants.dart';
import 'package:my_portfolio/presentation/widgets/hover_card.dart';

class WorkTablet extends StatelessWidget {
  const WorkTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 90, right: 90, top: 40),
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        children: [
          Text(
            'WORK',
            style: TextStyle(
              height: 1,
              fontSize: w! / 22,
              fontFamily: "geo",
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Portfolio',
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1,
              fontSize: w! / 58,
              fontFamily: "geo",
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 38),

          // Project 1
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: SizedBox(
                  child: HoverCard(image: project1),
                ),
              ),
              const SizedBox(width: 28),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chat Box - Group Chat App',
                    style: TextStyle(
                      height: 1,
                      fontSize: w! / 34,
                      fontFamily: "geo",
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'ChatBox is an android application with its robust and  \nefficient communication platform built using Flutter \nFramework, dart & various Firebase services.',
                    style: TextStyle(
                      height: 1.2,
                      fontSize: w! / 60,
                      fontFamily: "gfs_neohellenic",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 18),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(28, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    icon: Image.asset(
                      github,
                      fit: BoxFit.fill,
                      height: 20,
                      width: 20,
                    ),
                    label: Text(
                      'Github',
                      style: TextStyle(
                        height: 1,
                        fontSize: w! / 64,
                        fontFamily: "geo",
                        fontWeight: FontWeight.w200,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),

          // Project 2
          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pixel Perfect -Wallpaper App',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1,
                        fontSize: w! / 34,
                        fontFamily: "geo",
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Text(
                      'The Pixel Perfect App is a stunning and feature-rich  \nmobile application developed using the Flutter \nframework and Dart programming language.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: w! / 60,
                        fontFamily: "gfs_neohellenic",
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 18),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(28, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      icon: Image.asset(
                        github,
                        fit: BoxFit.fill,
                        height: 20,
                        width: 20,
                      ),
                      label: Text(
                        'Github',
                        style: TextStyle(
                          height: 1,
                          fontSize: w! / 64,
                          fontFamily: "geo",
                          fontWeight: FontWeight.w200,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 28),
                Expanded(
                  child: Container(
                    alignment: Alignment.topRight,
                    child: const HoverCard(image: project2),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),

          // Project 3
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Expanded(
                child: SizedBox(
                  child: HoverCard(image: project3),
                ),
              ),
              const SizedBox(width: 28),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Health Checkup App',
                    style: TextStyle(
                      height: 1,
                      fontSize: w! / 34,
                      fontFamily: "geo",
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'A user-friendly platform for comprehensive healthcare \nmanagement, offering easy booking of essential lab \ntests like diabetes screening, iron studies, and \nthyroid function tests at your fingertips.',
                    style: TextStyle(
                      height: 1.2,
                      fontSize: w! / 60,
                      fontFamily: "gfs_neohellenic",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 18),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(28, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    icon: Image.asset(
                      github,
                      fit: BoxFit.fill,
                      height: 20,
                      width: 20,
                    ),
                    label: Text(
                      'Github',
                      style: TextStyle(
                        height: 1,
                        fontSize: w! / 64,
                        fontFamily: "geo",
                        fontWeight: FontWeight.w200,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 28,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'MORE >>',
              style: TextStyle(
                color: Colors.white,
                fontSize: w! / 48,
                fontFamily: "geo",
              ),
            ),
          ),
          const SizedBox(
            height: 68,
          ),
        ],
      ),
    );
  }
}
