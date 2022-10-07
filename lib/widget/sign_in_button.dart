import 'package:flutter/material.dart';
import 'package:my_app/widget/custom_button.dart';

class SignInButton extends CustomButton {
  SignInButton({
    super.key,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  }) : super(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          color: color,
          onPressed: onPressed,
        );
}
