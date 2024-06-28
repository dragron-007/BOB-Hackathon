import 'package:bob_hackathon/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.orange,
        // accentColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.orange,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Homescreen()
    );
  }
}

