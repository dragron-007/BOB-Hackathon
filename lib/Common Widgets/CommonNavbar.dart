import 'package:bob_hackathon/Screens/ExploreScreen.dart';
import 'package:bob_hackathon/Screens/PersonalAI.dart';
import 'package:bob_hackathon/Screens/SettingScreen.dart';
import 'package:bob_hackathon/Screens/TrackerScreen.dart';
import 'package:flutter/material.dart';
import 'package:bob_hackathon/Screens/HomeScreen.dart';
class CommonNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CommonNavBar({required this.currentIndex, required this.onTap});

  final List<Widget> _pages = [
    Homescreen(),
    Trackerscreen(),
    Explorescreen(),
    Personalai(),
    Settingscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedFontSize: 16,
      unselectedFontSize: 12,
      selectedItemColor: Colors.white,
      // unselectedItemColor: Colors.grey,
      elevation: 5,
      backgroundColor: Colors.orange,
      onTap: (index) {
        if (index < _pages.length) {
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => _pages[index],
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
          );
        } else {
          onTap(index);
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.orange,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.track_changes),
          label: 'Financial Tracker',
          backgroundColor: Colors.orange,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
          backgroundColor: Colors.orange,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin_rounded),
          label: 'Personal Assistant',
          backgroundColor: Colors.orange,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Colors.orange,
        ),

      ],
    );
  }
}
