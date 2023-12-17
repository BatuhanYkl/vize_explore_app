import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email:"),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(49, 158, 158, 158),
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email address",
                ),
              ),
            ),
            SizedBox(height: 10),
            Text("Password:"),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(49, 158, 158, 158),
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your password",
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed:() {
                    Navigator.pushNamedAndRemoveUntil(context, "/home", (Route<dynamic> route) => false);
                  
                }, child: Text("Login"),
                ),
              ],
            ),
          ],
                ),
        ),
      ),
    );
  }
}