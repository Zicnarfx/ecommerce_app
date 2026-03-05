import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});

  final List<Product> products = [
    Product(
     id: "1",
     name: "Polo", 
     price: 2000.00, 
     image: "assets/images/polo.jpg",      
    ),
    Product(
    id: "2", 
    name: "Pants", 
    price: 3000.00, 
    image: "assets/images/pants.jpg",      
    ),
    Product(
    id: "3", 
    name: "Watch", 
    price: 10000.00, 
    image: "assets/images/watch.jpg",      
    ),
    Product(
    id: "4", 
    name: "Bag", 
    price: 1000.00, 
    image: "assets/images/bag.jpg",      
    ),
    Product(
    id: "5", 
    name: "Perfume", 
    price: 1200.00, 
    image: "assets/images/perfume.jpg",      
    ),
    
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              color: Colors.white,
              iconSize: 30,
              onPressed: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartScreen()));
            }, icon: Icon(Icons.shopping_cart))
          ),
        ],
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 126, 0, 105),
        title: TextField(
          decoration: InputDecoration(
            
             
            border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
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
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("₱${product.price.toStringAsFixed(2)}"),
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
