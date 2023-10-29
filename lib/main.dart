import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/pages/home_screen.dart';
import 'package:my_portfolio/provider/scroll_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ScrollProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Portfo;io',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
