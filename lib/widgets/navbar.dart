// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/provider/scroll_provider.dart';
import 'package:provider/provider.dart';

import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileNavBar(),
      tablet: (BuildContext context) => TabletNavBAr(),
      desktop: (BuildContext context) => DeskTopNavBAr(),
    );
  }

/*============ MOBILE VIEW =============== */
  Widget MobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 80),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navMobileLogo(),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget navDrawer() {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Home"),
            onTap: () {
              // Handle the Home option here, e.g., navigate to the Home screen.
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text("Work"),
            onTap: () {
              // Handle the Work option here.
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text("About"),
            onTap: () {
              // Handle the About option here.
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text("Contact"),
            onTap: () {
              // Handle the Contact option here.
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }

  // MainLogo for mobile
  Widget navMobileLogo() {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        'assets/images/main_logo.png',
      ))),
    );
  }

  // Tablet Navigation Buttons  //

  Widget TabletNavBAr() {
    return Container(
      margin: const EdgeInsets.only(left: 50, right: 50, top: 30),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navTabLogo(),
          Row(
            children: [
              navTabButton('Home'),
              const SizedBox(width: 14),
              navTabButton('Work'),
              const SizedBox(width: 14),
              navTabButton('About'),
              const SizedBox(width: 14),
              navTabButton('Contact'),
              const SizedBox(width: 14),
            ],
          ),
        ],
      ),
    );
  }

  Widget navTabButton(String text) {
    return Consumer<ScrollProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return TextButton(
          onPressed: () {
            if (text == "Home") {
              value.setInt(0);
            } else if (text == "Work") {
              value.setInt(1);
            } else if (text == "About") {
              value.setInt(2);
            } else if (text == "Contact") {
              value.setInt(3);
            }
          },
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'geo',
              fontSize: 24,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.8,
            ),
          ),
        );
      },
    );
  }

  // MainLogo for tablet
  Widget navTabLogo() {
    return Container(
      width: 76,
      height: 76,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        'assets/images/main_logo.png',
      ))),
    );
  }

  // Desktop navigation buttons ////////////////////////////////////

  Widget DeskTopNavBAr() {
    return Container(
      margin: const EdgeInsets.only(left: 90, right: 90, top: 60),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navDeskLogo(),
          Row(
            children: [
              navDeskButton('Home'),
              const SizedBox(width: 40),
              navDeskButton('Work'),
              const SizedBox(width: 40),
              navDeskButton('About'),
              const SizedBox(width: 40),
              navDeskButton('Contact'),
              const SizedBox(width: 40),
            ],
          ),
        ],
      ),
    );
  }

  Widget navDeskButton(String text) {
    return Consumer<ScrollProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return TextButton(
          onPressed: () {
            if (text == "Home") {
              value.setInt(0);
            } else if (text == "Work") {
              value.setInt(1);
            } else if (text == "About") {
              value.setInt(2);
            } else if (text == "Contact") {
              value.setInt(3);
            }
          },
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'geo',
              fontSize: 30,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
        );
      },
    );
  }

  // MAinLogo for desktop
  Widget navDeskLogo() {
    return Container(
      width: 100,
      height: 100,
      decoration:
          const BoxDecoration(image: DecorationImage(image: AssetImage(logo))),
    );
  }
}
