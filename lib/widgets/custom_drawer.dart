import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/drawer.jpg'))),
          ),
          ListTile(
            leading: Icon(
              Icons.refresh,
              size: 28,
            ),
            title: Text(
              "Reset Progress",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              size: 28,
            ),
            title: Text(
              "Share With Friends",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.star,
              size: 28,
            ),
            title: Text(
              "Rate Us",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.feedback_outlined,
              size: 28,
            ),
            title: Text(
              "Feedback",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.security,
              size: 28,
            ),
            title: Text(
              "Privacy Policy",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            indent: 25,
            endIndent: 25,
          ),
          Center(
            child: Text("Version : 1.0.0"),
          )
        ],
      ),
    );
  }
}
