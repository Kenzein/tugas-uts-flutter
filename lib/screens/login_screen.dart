import 'package:flutter/material.dart';
import '../data/users_data.dart';
import 'package:money_laundry/screens/home_screen.dart';
import 'register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6594B1),
      body: SafeArea(
        child: Column(
          children: [

            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello!",
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text("Welcome to money laundry",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [

                    Text("Login",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF6594B1))),

                    SizedBox(height: 20),

                    TextField(
                      controller: emailController,
                      decoration: inputDecoration("Email", Icons.email),
                    ),

                    SizedBox(height: 15),

                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: inputDecoration("Password", Icons.lock),
                    ),

                    SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {

                          String email = emailController.text;
                          String password = passwordController.text;

                          var user = users.firstWhere(
                            (u) => u["email"] == email,
                            orElse: () => {},
                          );

                          if (user.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Akun tidak ditemukan")),
                            );
                            return;
                          }

                          if (user["password"] != password) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Password salah")),
                            );
                            return;
                          }

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => HomePage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF6594B1),
                        ),
                        child: Text("Login"),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => RegisterPage()),
                        );
                      },
                      child: Text("Don't have an account? Sign Up"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration inputDecoration(String hint, IconData icon) {
    return InputDecoration(
      prefixIcon: Icon(icon),
      hintText: hint,
      filled: true,
      fillColor: Colors.grey.shade100,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
    );
  }
}