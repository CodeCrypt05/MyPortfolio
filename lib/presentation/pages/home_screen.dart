import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/presentation/pages/containers/container_1.dart';
import 'package:my_portfolio/presentation/pages/containers/container_2.dart';
import 'package:my_portfolio/presentation/pages/containers/container_3.dart';
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
      backgroundColor: HexColor("#050507"),
      body: SingleChildScrollView(
        child: Container(
          // decoration: const BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage('assets/images/background_1.png'),
          //         fit: BoxFit.fill)),
          child: const Column(
            children: [
              NavBar(),
              Container1(),
              Container2(),
              Container3(),
            ],
          ),
        ),
      ),
    );
  }
}
