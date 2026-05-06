import 'package:flutter/material.dart';

class SupportTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;

  const SupportTile({
    super.key,
    required this.imagePath,
    required this.title,
    this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 30,
          height: 30,
          fit: BoxFit.contain,
        ),
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle!) : null,
        trailing: onTap != null
            ? const Icon(Icons.arrow_forward_ios, size: 16)
            : null,
        onTap: onTap,
      ),
    );
  }
}
