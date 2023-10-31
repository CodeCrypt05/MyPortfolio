import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/containers/home/home_desktop.dart';
import 'package:my_portfolio/pages/containers/home/home_mobile.dart';
import 'package:my_portfolio/pages/containers/home/home_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const HomeMobile(),
      tablet: (BuildContext context) => const HomeTablet(),
      desktop: (BuildContext context) => const HomeDesktop(),
    );
  }
}
