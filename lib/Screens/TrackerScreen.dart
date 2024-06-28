import 'package:flutter/material.dart';
import 'package:bob_hackathon/Common Widgets/CommonNavbar.dart';

class Trackerscreen extends StatefulWidget {
  const Trackerscreen({super.key});

  @override
  State<Trackerscreen> createState() => _TrackerscreenState();
}

class _TrackerscreenState extends State<Trackerscreen> {
    int _currentIndex =1;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(child: Text("This is Tracker Screen")),
        bottomNavigationBar: CommonNavBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      );
    }
  }
