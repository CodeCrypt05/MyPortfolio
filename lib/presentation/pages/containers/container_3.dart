import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/utils/constants.dart';
import 'package:my_portfolio/presentation/widgets/hover_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer3(),
      tablet: (BuildContext context) => tabletContainer3(),
      desktop: (BuildContext context) => deskContainer3(),
    );
  }

  /*============= MOBILE VIEW =================*/
  Widget mobileContainer3() {
    return Container(
      margin: const EdgeInsets.only(left: 60, right: 60, top: 20),
      padding: EdgeInsets.only(left: 14, right: 14),
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
        SizedBox(
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

  /*============ TABLET VIEW =================*/
  Widget tabletContainer3() {
    return Container(
      margin: const EdgeInsets.only(left: 90, right: 90, top: 40),
      padding: EdgeInsets.only(left: 24, right: 24),
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
          Container(
            child: Row(
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
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),

          // Project 2
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
          Container(
            child: Row(
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
                    ),
                  ],
                ),
              ],
            ),
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

  /*============ DESKTOP VIEW ================*/
  Widget deskContainer3() {
    return Container(
      margin: const EdgeInsets.only(left: 160, right: 160, top: 90),
      padding: EdgeInsets.only(left: 40, right: 40),
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
          const SizedBox(height: 48),

          // Project 1
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: SizedBox(
                    child: HoverCard(image: project1),
                  ),
                ),
                const SizedBox(width: 38),
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
                        height: 28,
                        width: 28,
                      ),
                      label: Text(
                        'Github',
                        style: TextStyle(
                          height: 2,
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
          ),
          const SizedBox(
            height: 32,
          ),

          // Project 2
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
                        height: 28,
                        width: 28,
                      ),
                      label: Text(
                        'Github',
                        style: TextStyle(
                          height: 2,
                          fontSize: w! / 64,
                          fontFamily: "geo",
                          fontWeight: FontWeight.w200,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 38),
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
            height: 32,
          ),

          // Project 3
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(
                  child: SizedBox(
                    child: HoverCard(image: project3),
                  ),
                ),
                const SizedBox(width: 38),
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
                        height: 28,
                        width: 28,
                      ),
                      label: Text(
                        'Github',
                        style: TextStyle(
                          height: 2,
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
