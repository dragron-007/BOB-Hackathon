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
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                child: const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Hello Username",
                        style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      )
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                      bottomLeft:  Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
              )
            ],
          ),
        ),
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
