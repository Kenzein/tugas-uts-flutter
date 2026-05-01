import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Help & Support"), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "FAQ",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          buildTile(
            icon: Icons.help_outline,
            title: "Cara membuat order?",
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => const AlertDialog(
                  title: Text("Cara membuat order"),
                  content: Text(
                    "Masuk ke menu Order, pilih layanan, lalu tekan simpan.",
                  ),
                ),
              );
            },
          ),

          buildTile(
            icon: Icons.help_outline,
            title: "Cara melihat laporan?",
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => const AlertDialog(
                  title: Text("Laporan"),
                  content: Text(
                    "Masuk ke menu Report untuk melihat laporan transaksi.",
                  ),
                ),
              );
            },
          ),

          const SizedBox(height: 20),

          /// Report Bug
          const Text(
            "Report Issue",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          buildTile(
            icon: Icons.bug_report,
            title: "Laporkan Bug",
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Fitur report (dummy)")),
              );
            },
          ),

          const SizedBox(height: 20),

          /// CONTACT
          const Text(
            "Contact Developer",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          buildTile(
            icon: Icons.email,
            title: "Email",
            subtitle: "support@moneylaundry.com",
          ),

          buildTile(
            icon: Icons.phone,
            title: "WhatsApp",
            subtitle: "+62 812-3456-7890",
          ),
        ],
      ),
    );
  }

  ///Reusable Tile
  Widget buildTile({
    required IconData icon,
    required String title,
    String? subtitle,
    VoidCallback? onTap,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          child: Icon(icon, color: Colors.blue),
        ),
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle) : null,
        trailing: onTap != null ? const Icon(Icons.arrow_forward_ios) : null,
        onTap: onTap,
      ),
    );
  }
}
