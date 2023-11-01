import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/containers/skills/skills_desktop.dart';
import 'package:my_portfolio/pages/containers/skills/skills_mobile.dart';
import 'package:my_portfolio/pages/containers/skills/skills_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const SkillsMobile(),
      tablet: (BuildContext context) => const SkillsTablet(),
      desktop: (BuildContext context) => const SkillsDesktop(),
    );
  }
}
