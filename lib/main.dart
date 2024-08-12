import 'package:flutter/material.dart';
import 'package:test_second/custom_nav_bar.dart';
import 'package:test_second/first.dart';
import 'package:test_second/second.dart';
import 'package:test_second/settings.dart';
import 'package:test_second/third.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final PageController _pageController = PageController();
  bool isPremium = false;
  bool _isFirst = true;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
      print(_selectedIndex);
    });
  }

  void _onPremiumChanged(bool value) {
    setState(() {
      isPremium = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[
          FirstScreen(
            isPremium: isPremium,
          ),
          SecondScreen(
            isPremium: isPremium,
          ),
          ThirdScreen(
            isPremium: isPremium,
          ),
        ],
        onPageChanged: (index) {
          if (index == 1 && _isFirst && !isPremium) {
            _isFirst = false;
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SettingScreen(
                        isPremium: isPremium,
                        onPremiumChanged: _onPremiumChanged)),
              );
            });
          } else {
            setState(() {
              _selectedIndex = index;
            });
          }
        },
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0, right: 10.0),
          child: AppBar(
            toolbarHeight: 50,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingScreen(
                              isPremium: isPremium,
                              onPremiumChanged: _onPremiumChanged)),
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
