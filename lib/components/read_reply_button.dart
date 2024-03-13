import 'package:flutter/material.dart';

class ReadReplyButton extends StatelessWidget {
  final int replyCount;

  const ReadReplyButton(
      {Key? key, required this.replyCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        'Read $replyCount replies',
      ),
    );
  }
}
