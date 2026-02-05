import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(color: Colors.white, size: 30, Icons.shopping_cart),
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

      body: GridView.builder(
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "assets/images/polo.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  "Polo Shirt",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("₱2000.00"),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add to cart"),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
