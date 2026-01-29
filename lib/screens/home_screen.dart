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
      actions: [Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.message_outlined),
      )],
      toolbarHeight: 80,
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(255, 202, 37, 175),
      title: 
        TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    label: Text(
                      style: TextStyle(color: const Color.fromARGB(255, 2, 2, 2)),"Search"),
                  ),
                  
      ),                      
    
    ),
    body: Center(
      child: Container(
        child: Text("HOME SCREEN"),
      ),
    ),
      );
      
  }
}