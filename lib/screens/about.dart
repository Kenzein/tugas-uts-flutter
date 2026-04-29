import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("About"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // // Logo
            // Container(
            //   width: 120,
            //   height: 120,
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: Colors.transparent,
            //   ),
            //   child: ClipOval(
            //     child: Image.asset('assets/images/Logo.png', fit: BoxFit.cover),
            //   ),
            // ),
            const SizedBox(height: 10),

            // Nama App
            const Text(
              "Money Laundry",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),

            // Bagian Version
            const Text("V 1.0.0", style: TextStyle(color: Colors.white70)),

            const SizedBox(height: 10),

            // Deskripsi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Aplikasi ini membantu pengelolaan laundry agar lebih mudah, cepat, dan efisien.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),

            const SizedBox(height: 30),

            // Card Tim
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text(
                    "Developer Team",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 20),

                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      buildMember("Kenzy Setio", "@kenzysetio"),
                      buildMember("Steven Fandich", "@stevenfandich"),
                      buildMember("Avinash", "@avinash"),
                      buildMember("Valencia", "@valencia"),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Footer
            const Text(
              "© 2026 Mikriskid",
              style: TextStyle(color: Colors.white70),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Widget untuk informasi anggota tim
  Widget buildMember(String name, String role) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(radius: 25, child: Icon(Icons.person)),
          const SizedBox(height: 8),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(role, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
