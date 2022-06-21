import 'package:flutter/material.dart';
import 'registration_screen.dart';
import 'tests_screen.dart';
import 'tokens_purchase_screen.dart';
import 'tutorial_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  int _currentTabIndex = 0;
  onTapped(int index) {
    if (index != _currentTabIndex) {
      //This if statement is to prevent rebuilding of the widget if the tab is same.
      setState(() {
        _currentTabIndex = index;
      });
    }
  }

  final pages = [
    TutorialScreen(),
    TestsScreen(),
    TokensPurchaseScreen(),
    RegistrationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[_currentTabIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          onTap: onTapped,
          currentIndex: _currentTabIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Tutorials",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Tests",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: "Buy Tokens",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Registrations",
            ),
          ],
        ),
      ),
    );
  }
}
