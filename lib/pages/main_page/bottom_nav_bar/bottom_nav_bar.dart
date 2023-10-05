import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.page, required this.onTap});

  final int page;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: page,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety), label: "Vets"),
        BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety), label: "Vets"),
        BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety), label: "Vets"),
      ],
    );
  }
}
