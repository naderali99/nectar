import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fristproj/view/Favorurite/view.dart';

import '../../core/utils/colors.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [

    Center(
      child: Text("Search Screen"),
    ),
    Center(
      child: Text("cart Screen"),
    ),
    Center(
      child: Text("cart Screen"),
    ),
    Favorites(),
    Center(
      child: Text("cart Screen"),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/shop.png",
              height: 24, // Set height here
              width: 24, // Set width here
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/Explore.png",
              height: 24, // Set height here
              width: 24, // Set width here
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/cart.png",
              height: 24, // Set height here
              width: 24, // Set width here
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/fav.png",
              height: 24, // Set height here
              width: 24, // Set width here
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/acc.png",
              height: 24, // Set height here
              width: 24, // Set width here
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}