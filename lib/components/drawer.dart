import 'package:flutter/material.dart';
import '../services/auth/auth_service.dart';
import '../view/screens/setting_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // logo
          DrawerHeader(
            child: Icon(
              Icons.message,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 40,
            ),
          ),

          // home
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
              leading: const Icon(Icons.home),
              title: const Text('H O M E'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),

          // setting
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('S E T T I N G'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingScreen(),
                  ),
                );
              },
            ),
          ),

          // logout
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('L O G O U T'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Do you want to logout'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          logout();
                          Navigator.pop(context);
                        },
                        child: Text(
                          'OK',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
