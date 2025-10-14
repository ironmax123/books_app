import 'package:flutter/material.dart';

class CapsuleButton extends StatelessWidget {
  const CapsuleButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.bg,
  });
  final VoidCallback onPressed;
  final Icon icon;
  final Color bg;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(36);
    final ringColor =
        Colors.black87; // dark ring & icon color (screenshot-like)

    return Material(
      color: bg,
      elevation: 8, // soft, natural elevation for large touch target
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: radius),
      clipBehavior: Clip.antiAlias, // ensure ripple is clipped to capsule
      child: InkWell(
        borderRadius: radius,
        onTap: onPressed,
        child: SizedBox(
          width: 88,
          height: 136,
          child: Center(
            child: IconTheme(
              data: IconThemeData(color: ringColor, size: 28),
              child: icon,
            ),
          ),
        ),
      ),
    );
  }
}
