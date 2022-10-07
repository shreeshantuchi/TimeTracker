import 'package:flutter/material.dart';
import 'package:my_app/app/sign_in/landing_page.dart';
import 'package:my_app/app/sign_in/signin_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_app/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Time Tracker',
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: Landing(
          auth: Auth(),
        ));
  }
}
