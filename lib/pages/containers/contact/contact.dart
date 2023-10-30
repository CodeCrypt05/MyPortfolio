import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/containers/contact/contact_desktop.dart';
import 'package:my_portfolio/pages/containers/contact/contact_mobile.dart';
import 'package:my_portfolio/pages/containers/contact/contact_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => ContactMobile(),
      tablet: (BuildContext context) => ContactTablet(),
      desktop: (BuildContext context) => ContactDesktop(),
    );
  }
}
