import 'package:flutter/material.dart';
import 'package:test_second/webview.dart';


class SettingScreen extends StatefulWidget {
  final bool isPremium;
  final Function(bool) onPremiumChanged;

  const SettingScreen(
      {super.key, required this.isPremium, required this.onPremiumChanged});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 247, 247),
        title: const Text(
          "Настройки",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 16, right: 16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    tileColor: const Color.fromARGB(255, 240, 240, 240),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    title: const Text(
                      "Получить Premium",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(
                          padding: const EdgeInsets.all(40),
                          backgroundColor: widget.isPremium ? const Color.fromARGB(255, 127, 125, 238) : const Color.fromARGB(255, 108, 180, 111),
                          content: Text(widget.isPremium ? 'Вы уже имеете статус Premium' : 'Поздравляем! Вы получили статус Premium!', style: const TextStyle(fontSize: 18), textAlign: TextAlign.center,),
                          duration: const Duration(seconds: 4),
                        ),
                      );
                      widget.onPremiumChanged(true);
                    },
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: const Color.fromARGB(255, 240, 240, 240),
                    title: const Text(
                      "Terms of Us",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WebViewScreen(
                              url: 'https://www.google.com'),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: const Color.fromARGB(255, 240, 240, 240),
                    title: const Text(
                      "Privacy Policy",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WebViewScreen(
                              url: 'https://www.google.com'),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: const Color.fromARGB(255, 240, 240, 240),
                    title: const Text(
                      "Support",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WebViewScreen(
                              url: 'https://www.google.com'),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: const Color.fromARGB(255, 240, 240, 240),
                    title: const Text(
                      "Restore Purchase",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(
                          padding: const EdgeInsets.all(40),
                          backgroundColor: widget.isPremium ? const Color.fromARGB(255, 127, 125, 238) : const Color.fromARGB(255, 108, 180, 111),
                          content: Text(widget.isPremium ? 'Вы уже имеете статус Premium' : 'Поздравляем! Вы получили статус Premium!', style: const TextStyle(fontSize: 18), textAlign: TextAlign.center,),
                          duration: const Duration(seconds: 4),
                        ),
                      );
                      widget.onPremiumChanged(true);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
