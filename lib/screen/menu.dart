import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'screen.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Center(child: HomePage()),
    const Center(child: SleepPage()),
    const Center(child: MeditatePage()),
    const Center(child: MusicPage()),
    const Center(child: Text('Profile Page')),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 6, 1, 1).withValues(alpha: 200),
                spreadRadius: 3,
                blurRadius: 10,
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: _onTabTapped,
            type: BottomNavigationBarType.fixed,
            items: [
              _buildNavItem('home', 'Home', 0),
              _buildNavItem('sleep', 'Sleep', 1),
              _buildNavItem('meditate', 'Meditate', 2),
              _buildNavItem('music', 'Music', 3),
              _buildNavItem('user', 'Profile', 4),
            ],
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.grey,
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(String icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Container(
          decoration: BoxDecoration(
            color: _currentIndex == index
                ? Theme.of(context).primaryColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
          margin: const EdgeInsets.only(bottom: 5),
          // ),
          child: SvgPicture.asset(
            "assets/images/icons/$icon.svg",
            colorFilter: ColorFilter.mode(
              _currentIndex == index ? Colors.white : Colors.grey,
              BlendMode.srcIn,
            ),
            width: _currentIndex == index ? 30 : 24,
            height: _currentIndex == index ? 30 : 24,
          )),
      label: label,
    );
  }
}