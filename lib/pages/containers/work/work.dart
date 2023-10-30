import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/containers/work/work_desktop.dart';
import 'package:my_portfolio/pages/containers/work/work_mobile.dart';
import 'package:my_portfolio/pages/containers/work/work_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => WorkMobile(),
      tablet: (BuildContext context) => WorkTablet(),
      desktop: (BuildContext context) => WorkDesktop(),
    );
  }
}
