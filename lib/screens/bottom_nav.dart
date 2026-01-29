import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/screens/notification_screen.dart';
import 'package:ecommerce_app/screens/profile_screen.dart';
import 'package:ecommerce_app/screens/shop_screen.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  int _selectedIndex = 0;


static final List<Widget> _widgetOptions = [
  HomeScreen(),
  ShopScreen(),
  NotificationScreen(),
  ProfileScreen(),
];


void _onItemTapped(int index){
  setState(() {
    _selectedIndex = index;
  });
}
  Widget build(BuildContext context) {
    return Scaffold(
       //body
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),

      

        // bot navi
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
          BottomNavigationBarItem(icon: Icon(
            
            
            color: Colors.black,
            
            Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(
            color: Colors.black,
            
            Icons.shopping_bag), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(
            color: Colors.black,
            
            Icons.notifications), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(
            color: Colors.black,
            
            Icons.person), label: "Profile"),
        ],
 currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        ),
    );
  }
}