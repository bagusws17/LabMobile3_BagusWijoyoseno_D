import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Tambahkan ini
import '../screens/home_page.dart';
import '../screens/gallery_page.dart';
import '../screens/favorite_page.dart';
import '../screens/login_page.dart'; // Import LoginPage

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), // Ganti dengan path gambar yang diinginkan
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.orange,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/keqing-dizzy.jpg', // Gambar profil pengguna
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'eQuivalent',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'How is your day?',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.orange),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_library, color: Colors.orange),
            title: const Text('Gallery'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => GalleryPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite, color: Colors.orange),
            title: const Text('Favorite'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => FavoritePage()),
              );
            },
          ),
          const Spacer(), // This will push the logout button to the bottom
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.orange),
            title: const Text('Logout'),
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setBool('isLoggedIn', false); // Hapus status login
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()), // Kembali ke LoginPage
              );
            },
          ),
        ],
      ),
    );
  }
}
