import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        automaticallyImplyLeading: false, // This adds the back button
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0), // Horizontal padding for the content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end, // Align children horizontally at the center
          mainAxisAlignment: MainAxisAlignment.start, // Align children vertically at the top
          children: [
            // Profile Picture
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[200],
                backgroundImage: const AssetImage('assets/images/454206798_8155444621209878_6407819700370269405_n.jpg'), // Placeholder image
              ),
            ),
            const SizedBox(height: 20),

            // Username
            const Align(
              alignment: Alignment.center,
              child: Text(
                "VeasnaSS30",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            // Email
            const Align(
              alignment: Alignment.center,
              child: Text(
                "snamiracle@gmail.com",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),

            // Edit Profile Button (Dummy)
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality for editing profile here
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Edit Profile button clicked!')),
                  );
                },
                child: const Text("Edit Profile"),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
