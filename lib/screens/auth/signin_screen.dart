import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 237, 237),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/cartlogo.png',
                height: 150,
                width: 160,
              ),


              SizedBox(
                height: 10,
              ),
              // LOGIN
              Text(
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black),
                  "Welcome Back! Please Login!"),


              SizedBox(
                height: 30,
              ),
              // email textfield
              SizedBox(
                width: double.infinity,
                child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    color: const Color.fromARGB(255, 35, 0, 49),
                    Icons.person),
                  label: Text(
                    style: TextStyle(color: const Color.fromARGB(255, 4, 0, 253)),"Username"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                            ),
              ),


              SizedBox(
                height: 10,
              ),
              // pass textfield
               SizedBox(
                width: double.infinity,
                 child: TextField(
                    
                               decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_open_outlined),
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                               ),
                             ),
               ),


              SizedBox(
                height: 50,
              ),

              // login button
             SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 105, 5, 5)),

                onPressed: (){},
                child: Text(style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                  "Login"),
              ),
            ),
        

              SizedBox(
                height: 30,
              ),
              // register
              Text(
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  "Register"),
            ],
          ),
        ),
      ),
    );
  }
}

   
  