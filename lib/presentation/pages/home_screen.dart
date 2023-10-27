import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/pages/containers/about/about.dart';
import 'package:my_portfolio/presentation/pages/containers/contact/contact.dart';
import 'package:my_portfolio/presentation/pages/containers/container_1.dart';
import 'package:my_portfolio/presentation/pages/containers/container_2.dart';
import 'package:my_portfolio/presentation/pages/containers/work/work.dart';
import 'package:my_portfolio/presentation/utils/constants.dart';
import 'package:my_portfolio/presentation/widgets/navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(background_star_img),
              fit: BoxFit.fill,
            ),
          ),
          child: const Column(
            children: [
              NavBar(),
              Container1(),
              Container2(),
              Work(),
              About(),
              Contact()
            ],
          ),
        ),
      ),
    );
  }
}
