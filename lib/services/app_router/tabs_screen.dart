import 'package:flutter/material.dart';
import 'package:flutter_application_ig/pages/home_page/view/home_screen.dart';
import 'package:flutter_application_ig/pages/profile_page/view/profile_screen.dart';
import 'package:flutter_application_ig/pages/reels_page/view/reels_screen.dart';
import 'package:flutter_application_ig/pages/search_page/view/search_screen.dart';
import 'package:flutter_application_ig/pages/shop_page/view/shop_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  static const id = 'tabs_screen';

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pageDetails = [
    {
      'pageName': HomeScreen(),
      'title': 'Pending Tasks',
    },
    {
      'pageName': const SearchScreen(),
      'title': 'Fevorite Tasks',
    },
    {
      'pageName': const ReelsScreen(),
      'title': 'Fevorite Tasks',
    },
    {
      'pageName': const ShopScreen(),
      'title': 'Fevorite Tasks',
    },
    {
      'pageName': const ProfileScreen(),
      'title': 'Completed Tasks',
    },
  ];

  var _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageDetails[_selectedPageIndex]['pageName'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black45,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        onTap: (index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            activeIcon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_circle_outline,
            ),
            activeIcon: Icon(Icons.play_circle_filled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop_outlined,
            ),
            activeIcon: Icon(Icons.shop_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            activeIcon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
