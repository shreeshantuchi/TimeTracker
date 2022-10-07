import 'package:flutter/material.dart';
import 'package:my_app/app/sign_in/home_page.dart';
import 'package:my_app/app/sign_in/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_app/services/auth.dart';

class Landing extends StatefulWidget {
  const Landing({super.key, required this.auth});
  final Auth auth;

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  User? _user;

  @override
  void initState() {
    updateUser(widget.auth.currentUser);

    // TODO: implement initState
    super.initState();
  }

  void updateUser(User? user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInScreen(
        auth: widget.auth,
        onSignIn: updateUser,
      );
    } else {
      return HomePage(
        auth: widget.auth,
        onSignOut: () => updateUser(null),
      );
    }
  }
}
