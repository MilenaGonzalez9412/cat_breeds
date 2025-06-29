import 'package:flutter/material.dart';

class CustomTextDisplay extends StatelessWidget {
  final String title;
  final String content;
  const CustomTextDisplay({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: title, style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: content),
        ],
      ),
    );
  }
}
