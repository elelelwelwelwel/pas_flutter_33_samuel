import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
        ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
          ),
          SizedBox(height: 24),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Nama"),
            subtitle: Text("Samuel Prasta Aditya"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("Kelas"),
            subtitle: const Text("11 PPLG 1"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text("Absen"),
            subtitle: const Text("33"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}