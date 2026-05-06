import 'package:flutter/material.dart';
import 'package:money_laundry/screens/about.dart';
import 'package:money_laundry/screens/auth/screens/login_screen.dart';
import 'package:money_laundry/screens/profile_page.dart';

class AppSidebar extends StatelessWidget {
  const AppSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Header
          UserAccountsDrawerHeader(
            accountName: Text('Kenzy', style: TextStyle(color: Colors.black12)),
            accountEmail: Text('valencia@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image: AssetImage('./assets/images/appside.jpg'),
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('./assets/images/background.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Menu Tengah
          Expanded(
            child: ListView(
              children: [
                //  Profile
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    ),
                  },
                ),
                // About
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('About'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const About()),
                    ),
                  },
                ),
                // Settings
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.grey),
                  title: Text('Settings', style: TextStyle(color: Colors.grey)),
                  onTap: () => {},
                ),
              ],
            ),
          ),
          // Menu bawah
          Divider(),
          // Logout
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text('LogOut', style: TextStyle(color: Colors.red)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false,
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
