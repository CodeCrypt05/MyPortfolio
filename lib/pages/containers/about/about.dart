import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/containers/about/about_desktop.dart';
import 'package:my_portfolio/pages/containers/about/about_mobile.dart';
import 'package:my_portfolio/pages/containers/about/about_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const AboutMobile(),
      tablet: (BuildContext context) => const AboutTablet(),
      desktop: (BuildContext context) => const AboutDesktop(),
    );
  }
}
