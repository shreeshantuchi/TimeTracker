import 'package:flutter/material.dart';
import 'package:my_app/utils/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.borderRadius: 4.0,
      this.color: AppColor.grey,
      required this.onPressed,
      required this.child});
  final Color color;
  final VoidCallback onPressed;
  final Widget child;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          height: 50,
          width: double.infinity,
          child: child,
        ),
      ),
    );
  }
}
