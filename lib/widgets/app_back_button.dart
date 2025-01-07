import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  final Function()? onTap;
  const AppBackButton({this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFEBEAEC),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(55),
        ),
        child: const Icon(
          Icons.arrow_back,
        ),
      ),
    );
  }
}
