import 'package:flutter/material.dart';

class AppCircleButton extends StatelessWidget {
  final Function()? onTap;
  final bool isTransparent;
  final Widget? icon;
  const AppCircleButton(
      {this.onTap, this.isTransparent = false, this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 45,
        height: 45,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isTransparent
              ? Colors.black.withOpacity(0.3)
              : const Color(
                  0xFFEBEAEC,
                ),
          border: Border.all(
            color: isTransparent
                ? Colors.black.withOpacity(0)
                : const Color(0xFFEBEAEC),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(55),
        ),
        child: icon ??
            const Icon(
              Icons.arrow_back,
              color: Color(0xFF3F414E),
            ),
      ),
    );
  }
}
