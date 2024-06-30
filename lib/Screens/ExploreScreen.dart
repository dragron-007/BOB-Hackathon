import 'package:flutter/material.dart';
import 'package:bob_hackathon/Common Widgets/CommonNavbar.dart';

class Explorescreen extends StatefulWidget {
  const Explorescreen({super.key});

  @override
  State<Explorescreen> createState() => _ExplorescreenState();
}

class _ExplorescreenState extends State<Explorescreen> {
  int _currentIndex =2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("This is Explore Screen")),
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
