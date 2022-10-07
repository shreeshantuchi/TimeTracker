import 'package:flutter/material.dart';
import 'package:my_app/widget/custom_button.dart';

class SocialSignInButton extends CustomButton {
  SocialSignInButton({
    super.key,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
    String? imgUrl,
  }) : super(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                imgUrl == null
                    ? const SizedBox(
                        width: 0,
                      )
                    : Image.asset(
                        imgUrl,
                        height: 35,
                        width: 35,
                      ),
                Text(
                  text,
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                imgUrl == null
                    ? const SizedBox(width: 0)
                    : const SizedBox(width: 35),
              ],
            ),
          ),
          color: color,
          onPressed: onPressed,
        );
}
