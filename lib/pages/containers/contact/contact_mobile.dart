import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 26, right: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'CONNECT',
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
                'With Me',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1,
                  fontSize: w! / 58,
                  fontFamily: "geo",
                  color: Colors.white,
                ),
              ),
              Text(
                "I'm currently looking to join a cross-functional team that values improving people's \nlives through accessible design. Let's connect.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1,
                  fontSize: w! / 38,
                  fontFamily: "gfs_neohellenic_bold",
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 14),
              Text(
                "vaibhavwaghre@gmail.com",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1,
                  fontSize: w! / 38,
                  fontFamily: "gfs_neohellenic",
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    github,
                    fit: BoxFit.fill,
                    height: 28,
                    width: 28,
                  ),
                  const SizedBox(width: 18),
                  Image.asset(
                    instagra_ic,
                    fit: BoxFit.fill,
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(width: 18),
                  Image.asset(
                    linkdin_ic,
                    fit: BoxFit.fill,
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 28),
        Image.asset(bottom_nav_astro),
      ],
    );
  }
}
