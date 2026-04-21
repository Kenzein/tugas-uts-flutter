import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color? color;
  final Color? textColor;
  final double borderRadius;
  final double height;
  final Widget? icon;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.color,
    this.textColor,
    this.borderRadius = 12,
    this.height = 50,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Colors.blue,
          disabledBackgroundColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(borderRadius),
          ),
          elevation: 0,
        ),
        child: isLoading
            ? const SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null) ...[icon!, const SizedBox(width: 8)],
                  Text(
                    text,
                    style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
