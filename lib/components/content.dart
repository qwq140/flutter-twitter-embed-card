import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  final String contentText;
  final String contentImage;

  const Content({Key? key, required this.contentText, required this.contentImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          contentText,
          style: const TextStyle(fontSize: 18),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            contentImage,
          ),
        ),
      ],
    );
  }
}
