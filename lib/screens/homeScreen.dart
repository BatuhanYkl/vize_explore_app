import 'package:flutter/material.dart';
import 'package:navigation_app/screens/postsSection.dart';

import '../widgets/menuItem.dart';
import '../widgets/profileItem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ISU"),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              ProfileItem(
                avatar: "assets/images/avatar.jpg",
                name: "K1",
                onTap: () {
                  Navigator.pushNamed(context, "/profile");
                },
              ),
              Expanded(
                child: Column(
                  children: [
                    Divider(),
                    MenuItem(
                      title: "Home Screen",
                      icon: Icon(
                        Icons.home,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                    MenuItem(
                      title: "About Us",
                      icon: Icon(
                        Icons.info_outline,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                    MenuItem(
                      title: "Shop",
                      icon: Icon(
                        Icons.shop_2_outlined,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                    MenuItem(
                      title: "Contact Us",
                      icon: Icon(
                        Icons.message,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                    Divider(),
                    MenuItem(
                      title: "Settings",
                      icon: Icon(
                        Icons.settings,
                        size: 20,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/settings");
                      },
                    ),
                    Divider(),
                    MenuItem(
                      icon: Icon(Icons.login_outlined),
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/welcome', (route) => false);
                      },
                      title: "Logout",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Version 1.0.7",
                style:TextStyle(
                  color: Colors.grey,
                  fontSize:10,
                ),
              ),
            ],
          ),
        ),
        body: PostsSection(),
        );
  }
}


