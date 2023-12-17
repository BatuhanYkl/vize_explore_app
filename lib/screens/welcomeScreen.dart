import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Text("Welcome to isu app"),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/login'), 
                child: Row(
                  children: [
                    Icon(Icons.login_rounded),
                    SizedBox(width: 10,),
                    Text("Login"),
                    
                  ],
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed:() => Navigator.pushNamed(context, '/register'),
                child: Row(
                  children: [
                    Icon(Icons.app_registration),
                    SizedBox(width: 10,),
                    Text("Register"),
                  ],
                ), 
              ),
            ],
          ),
        ],
        ),
      ),
    );
  }
}