import 'package:flutter/material.dart';
import 'package:vsbl/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Removes annoying debug banner
      debugShowCheckedModeBanner: false,
      title: 'Vsbl',
      theme: ThemeData(
        primarySwatch:
            Colors.deepPurple, // Closest color to the app theme color
        fontFamily: 'Inter', // Main font used throughout the app
      ),
      home: const HomeScreen(),
    );
  }
}
