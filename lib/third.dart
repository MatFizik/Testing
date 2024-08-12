import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  final bool isPremium;
  const ThirdScreen({super.key, required this.isPremium});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(widget.isPremium ? 'You are Premium' : 'You are Not premium', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),);
  }
}