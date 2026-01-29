import 'package:ecommerce_app/screens/auth/signup_screen.dart';
import 'package:ecommerce_app/screens/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController  _usernameController = TextEditingController();
  final TextEditingController  _passwordController = TextEditingController();
  String username = "admin";
  String password = "password";

  void signin(){
    if (
      _usernameController.text == username && _passwordController.text == password
    ){
      Navigator.push(context, MaterialPageRoute(builder: (_) => BottomNav()));
    }

    else{
                const snackBar = SnackBar(
                  /// need to set following properties for best effect of awesome_snackbar_content
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'On Snap!',
                    message:
                        'User or password is incorrect',

                    /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                    contentType: ContentType.failure,
                  ),
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
    }
  }
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
              // logo
              Image.asset(
                'assets/images/ecommerceapplogo.png', 
              ),
              // text
              Text(
                  style: TextStyle(
                      fontSize: 15.9,
                      color: Colors.black),
                  "Welcome Back! Please Login!"),


              SizedBox(
                height: 30
                ,
              ),
              // user textfield
              SizedBox(
                width: double.infinity,
                child: TextField(
                  controller: _usernameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    color: const Color.fromARGB(255, 35, 0, 49),
                    Icons.person),
                  label: Text(
                    style: TextStyle(color: const Color.fromARGB(255, 24, 0, 37)),"Username"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
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
                  controller: _passwordController,
                  obscureText: true,
                               decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_open_outlined),
                  label: Text(
                    style: TextStyle(color: const Color.fromARGB(255, 24, 0, 37)),"Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                               ),
                             ),
               ),


              SizedBox(
                height: 30,
              ),

              // login button
             SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 190, 0, 133)),

                onPressed: signin,
                child: Text(style: TextStyle(fontSize: 16.0,
                letterSpacing: 3,
                  color: const Color.fromARGB(255, 0, 0, 0)),
                  "Sign In"),
              ),
            ),
        

              SizedBox(
                height: 30,
              ),
              // register
             TextButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignupScreen()),
    );
  },
  child: const Text(
    style: TextStyle(fontSize: 20),
    'Sign Up'),
)
            ],
          ),
        ),
      ),
    );
  }
}

   
  