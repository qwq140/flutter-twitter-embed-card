import 'package:flutter/material.dart';
import 'package:twitter_embed_card/svg_asset.dart';
import 'package:twitter_embed_card/svg_icon.dart';

class DateIndicator extends StatelessWidget {

  final String date;
  final String time;

  const DateIndicator({Key? key, required this.date, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$time · $date'),
        const SvgIcon(asset: SvgAsset.info),
      ],
    );
  }
}
