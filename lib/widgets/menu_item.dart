import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final Widget page;
  const MenuItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(imagePath, width: 42, height: 42, fit: BoxFit.contain),
          const SizedBox(height: 8),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
