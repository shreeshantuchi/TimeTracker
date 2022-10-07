import 'package:flutter/material.dart';
import 'package:my_app/services/auth.dart';
import 'package:my_app/utils/color.dart';
import 'package:my_app/widget/sign_in_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_app/widget/social_signin_button.dart';

class SignInScreen extends StatelessWidget {
  final void Function(User?) onSignIn;
  final AuthBase auth;
  const SignInScreen({super.key, required this.onSignIn, required this.auth});

  void _signInAnonymosuly() async {
    try {
      final userCredeintial = await auth.signInAnonymously();
      onSignIn(userCredeintial);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 2.0,
        centerTitle: true,
        title: const Text("Time Tracker"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign In",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              SocialSignInButton(
                imgUrl: "assets/google.png",
                text: "Sign in With Google ",
                textColor: Colors.black,
                onPressed: () {},
                color: Colors.white,
              ),
              const SizedBox(
                height: 15,
              ),
              SocialSignInButton(
                imgUrl: "assets/facebook.png",
                text: "Sign in With Facebook ",
                color: AppColor.blue,
                textColor: Colors.white,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              SignInButton(
                text: "Sign in With Email",
                color: AppColor.green,
                textColor: Colors.white,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Or"),
              const SizedBox(
                height: 15,
              ),
              SignInButton(
                text: "Sign in Anonymously ",
                color: AppColor.yellow,
                textColor: Colors.black,
                onPressed: () {
                  _signInAnonymosuly();
                },
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
