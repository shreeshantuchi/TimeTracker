import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_app/services/auth.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onSignOut;
  final AuthBase auth;
  const HomePage({super.key, required this.onSignOut, required this.auth});

  @override
  Widget build(BuildContext context) {
    Future<void> _signOut() async {
      try {
        auth.signOut();
        onSignOut();
      } catch (e) {
        print(e.toString());
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(
              onPressed: () {
                _signOut();
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
    );
  }
}
