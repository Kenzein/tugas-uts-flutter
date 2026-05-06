import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6594B1), // pusat warna utama
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Color(0xFF6594B1),
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),

            // Avatar
            Container(
              decoration: const BoxDecoration(
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
                backgroundImage: AssetImage(
                  'assets/images/appside.jpg', // path sudah benar
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Nama
            const Text(
              "Valencia",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            // Email
            const Text(
              "valencia@gmail.com",
              style: TextStyle(color: Colors.white),
            ),

            const SizedBox(height: 25),

            // Card Info (tetap putih biar kontras)
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
                    subtitle: Text("Valencia"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Email"),
                    subtitle: Text("valencia@gmail.com"),
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

            // Button
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Color(0xFF6594B1),
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
