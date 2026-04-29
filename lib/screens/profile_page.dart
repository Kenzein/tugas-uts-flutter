import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),

            // Avatar
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 55,

                backgroundImage: NetworkImage(
                  'https://images.openai.com/static-rsc-4/Ri8jXVU2-otG-vVBRAYWJkQEA9lQTY9oe51OGdFUUqHypj-X7igYiyP_wEhHksa7G7TXg2mXvV2uBybo_ZWMecXOyaxXyLEwEXx9yUvRUWR20zdjsODqIvLGPeghUNGdggi4EJbMHRP-vJT06DT_e9HKsGEftudr8GMTUXvnhT0?purpose=inline',
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Nama
            const Text(
              "Kenzy",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            //Email
            const Text(
              "kenzy@example.com",
              style: TextStyle(color: Colors.white70),
            ),

            const SizedBox(height: 25),

            //Card Info
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Nama"),
                    subtitle: Text("Kenzy"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Email"),
                    subtitle: Text("kenzy@example.com"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Phone"),
                    subtitle: Text("08123456789"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Edit Profile Button
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.edit),
              label: const Text("Edit Profile"),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
