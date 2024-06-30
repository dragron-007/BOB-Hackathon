import 'package:flutter/material.dart';
import 'package:bob_hackathon/Common Widgets/CommonNavbar.dart';
class Settingscreen extends StatefulWidget {
  const Settingscreen({super.key});

  @override
  State<Settingscreen> createState() => _SettingscreenState();
}

class _SettingscreenState extends State<Settingscreen> {
  int _currentIndex =4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("This is Setting Screen")),
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
