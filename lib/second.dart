import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final bool isPremium;
  const SecondScreen({super.key, required this.isPremium});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Welcome",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
