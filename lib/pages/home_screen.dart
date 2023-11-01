import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/containers/about/about.dart';
import 'package:my_portfolio/pages/containers/contact/contact.dart';
import 'package:my_portfolio/pages/containers/home/home.dart';
import 'package:my_portfolio/pages/containers/skills/skills.dart';
import 'package:my_portfolio/pages/containers/work/work.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/widgets/navbar.dart';
import 'package:my_portfolio/provider/scroll_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey container1Key = GlobalKey();
  final GlobalKey container2Key = GlobalKey();
  final GlobalKey workKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  GlobalKey scrollKey = GlobalKey();

  void _scrollToIndex(int index) {
    double position = 0.0;
    switch (index) {
      case 1:
        position = container1Key.currentContext!.size!.height +
            container2Key.currentContext!.size!.height +
            200;
        break;
      case 2:
        position = container1Key.currentContext!.size!.height +
            container2Key.currentContext!.size!.height +
            workKey.currentContext!.size!.height;
        break;
      case 3:
        position = container1Key.currentContext!.size!.height +
            container2Key.currentContext!.size!.height +
            workKey.currentContext!.size!.height +
            aboutKey.currentContext!.size!.height +
            200;
        break;
      default:
        break;
    }

    if (position > 0) {
      _scrollController.animateTo(
        position,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.ease,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    Provider.of<ScrollProvider>(context, listen: false)
        .addListener(_handleIndexChange);
  }

  void _handleIndexChange() {
    int index = Provider.of<ScrollProvider>(context, listen: false).getIntValue;
    _scrollToIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        key: scrollKey,
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/star.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const NavBar(),
              Home(key: container1Key),
              Skills(key: container2Key),
              Work(key: workKey),
              About(key: aboutKey),
              Contact(key: contactKey)
            ],
          ),
        ),
      ),
    );
  }
}
