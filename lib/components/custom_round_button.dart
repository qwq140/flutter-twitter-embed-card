import 'package:flutter/material.dart';

class CustomRoundButton extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;

  const CustomRoundButton(
      {Key? key, required this.child, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(color: Colors.black),
          )
        ),
        child: child,
      ),
    );
  }
}
