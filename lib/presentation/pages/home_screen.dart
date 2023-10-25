import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/presentation/pages/containers/home_container.dart';
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
          child: Column(
            children: [
              NavBar(),
              HomeContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
