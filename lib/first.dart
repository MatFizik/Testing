import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  final bool isPremium;
  const FirstScreen({super.key, required this.isPremium});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> rect = List.generate(widget.isPremium ? 10 : 3, (index){
      return Container(
        margin: const EdgeInsets.all(10),
        width: 500,
        height: 200,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 240, 240, 240),
          borderRadius: BorderRadius.circular(20),
        ),
      );
    }
    );
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: SingleChildScrollView(
        child: Column(
            children: rect,
          ),
      ),
    );
  }
}
