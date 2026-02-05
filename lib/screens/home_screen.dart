import 'package:ecommerce_app/screens/auth/signin_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.message_outlined, color: Colors.white, size: 30),
          ),
        ],
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 126, 0, 105),
        title: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.white,
            label: Text(
              style: TextStyle(color: const Color.fromARGB(255, 2, 2, 2)),
              "Search",
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SigninScreen()),
            );
          },
          child: Text("Sign Out"),
        ),
      ),
    );
  }
}
