import 'package:flutter/material.dart';
import 'package:bob_hackathon/Common Widgets/CommonNavbar.dart';
class Personalai extends StatefulWidget {
  const Personalai({super.key});

  @override
  State<Personalai> createState() => _PersonalaiState();
}

class _PersonalaiState extends State<Personalai> {
  int _currentIndex =3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("This is PeronalAI Screen")),
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
