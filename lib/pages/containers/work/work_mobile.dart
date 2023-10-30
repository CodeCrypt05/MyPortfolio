import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/widgets/hover_card.dart';

class WorkMobile extends StatelessWidget {
  const WorkMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 60, right: 60, top: 30),
      padding: const EdgeInsets.only(left: 14, right: 14),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
        const SizedBox(height: 28),
        // Project 1
        Text(
          'Chat Box - Group Chat App',
          style: TextStyle(
            height: 1,
            fontSize: w! / 24,
            fontFamily: "geo",
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 18),
        const SizedBox(
          child: HoverCard(image: project1),
        ),
        const SizedBox(height: 18),
        Text(
          'ChatBox is an android application with its robust and  \nefficient communication platform built using Flutter \nFramework, dart & various Firebase services.',
          style: TextStyle(
            height: 1.2,
            fontSize: w! / 48,
            fontFamily: "gfs_neohellenic",
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
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
            height: 18,
            width: 18,
          ),
          label: Text(
            'Github',
            style: TextStyle(
              height: 1,
              fontSize: w! / 34,
              fontFamily: "geo",
              fontWeight: FontWeight.w200,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // Project 2
        Text(
          'Pixel Perfect - Wallpaper App',
          style: TextStyle(
            height: 1,
            fontSize: w! / 24,
            fontFamily: "geo",
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 18),
        const SizedBox(
          child: HoverCard(image: project2),
        ),
        const SizedBox(height: 18),
        Text(
          'The Pixel Perfect App is a stunning and feature-rich  \nmobile application developed using the Flutter \nframework and Dart programming language.',
          style: TextStyle(
            height: 1.2,
            fontSize: w! / 48,
            fontFamily: "gfs_neohellenic",
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
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
            height: 18,
            width: 18,
          ),
          label: Text(
            'Github',
            style: TextStyle(
              height: 1,
              fontSize: w! / 34,
              fontFamily: "geo",
              fontWeight: FontWeight.w200,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // Project 3
        Text(
          'Health Checkup App',
          style: TextStyle(
            height: 1,
            fontSize: w! / 24,
            fontFamily: "geo",
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 18),
        const SizedBox(
          child: HoverCard(image: project3),
        ),
        const SizedBox(height: 18),
        Text(
          'A user-friendly platform for comprehensive healthcare \nmanagement, offering easy booking of essential lab \ntests like diabetes screening, iron studies, and \nthyroid function tests at your fingertips.',
          style: TextStyle(
            height: 1.2,
            fontSize: w! / 48,
            fontFamily: "gfs_neohellenic",
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
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
            height: 18,
            width: 18,
          ),
          label: Text(
            'Github',
            style: TextStyle(
              height: 1,
              fontSize: w! / 34,
              fontFamily: "geo",
              fontWeight: FontWeight.w200,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
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
      ]),
    );
  }
}
