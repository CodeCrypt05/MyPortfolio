import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 26, right: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'ABOUT',
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
            'Me',
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1,
              fontSize: w! / 58,
              fontFamily: "geo",
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 28),
          Column(
            children: [
              Text(
                introduction,
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
                first_para,
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
                sec_para,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1,
                  fontSize: w! / 38,
                  fontFamily: "gfs_neohellenic_bold",
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(height: 38),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(28, 255, 255, 255),
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Download Resume',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    height: 2,
                    fontSize: w! / 24,
                    fontFamily: "geo",
                    fontWeight: FontWeight.w200,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const SizedBox(width: 18),
                Image.asset(
                  forrword_arrow,
                  fit: BoxFit.fill,
                  height: 18,
                  width: 18,
                ),
              ],
            ),
          ),
          const SizedBox(height: 38),
        ],
      ),
    );
  }
}
