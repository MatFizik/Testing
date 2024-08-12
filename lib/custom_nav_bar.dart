import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;
  const CustomNavBar({super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40, left: 20,right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 247, 247, 247),
            currentIndex: _selectedIndex,
            onTap: (int index) {
             widget.onItemTapped(index);
              setState(() {
                _selectedIndex = index;
              });
            },
            unselectedFontSize: 16,
            selectedFontSize: 16,
            selectedItemColor: Colors.black,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: 'First',
              ),
              BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: 'Second',
              ),
              BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: 'Third',
              ),
            ],),
      ),
    );
  }
}