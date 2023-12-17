import 'package:flutter/material.dart';

import '../widgets/menuItem.dart';
import '../widgets/profileItem.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              ProfileItem(
                avatar: "assets/images/avatar.jpg",
                name: "K1",
                
              ),
              Divider(),
              MenuItem(
                icon: Icon(Icons.email),
                title: "keyvan.arasteh@live.com",
                onTap: () {},
              ),
              Divider(),
              MenuItem(
                icon: Icon(Icons.phone),
                title: "+90 568 482 15 98",
                onTap: () {},
              ),
              Divider(),
              MenuItem(
                icon: Icon(Icons.topic),
                title: "Comp. Engineer",
                onTap: () {},
              ),
              SizedBox(height: 25),
              ElevatedButton(onPressed: () {
                if (Navigator.canPop(context)) {
                Navigator.pop(context);
               } 
              },
              child: Text("Go Back"),),
            ],
          ),
        ));
  }
}
