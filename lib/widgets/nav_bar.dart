import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const NavBar({
    super.key, 
    required this.selectedIndex, 
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onItemSelected,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.person),
          label: 'About Me',
        ),
        NavigationDestination(
          icon: Icon(Icons.engineering),
          label: 'Skills',
        ),
        NavigationDestination(
          icon: Icon(Icons.contact_mail),
          label: 'Contact',
        ),
      ],
    );
  }
}
