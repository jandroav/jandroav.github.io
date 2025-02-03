import 'package:flutter/material.dart';
import '../widgets/about_me_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/work_experience_section.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _sections = <Widget>[
    AboutMeSection(),
    WorkExperienceSection(),
    SkillsSection(),
    ContactSection(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('jandroav.net'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: _sections.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Work Experience',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Skills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
